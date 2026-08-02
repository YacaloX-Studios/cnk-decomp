# Pipeline de Extracción de Assets — Crash Nitro Kart (PS2)

Documenta la implementación funcional de extracción de mallas, texturas y
animaciones a partir de los archivos IGB v5 del juego. Complementa a
`01_FORMATS.md` (formato binario) y describe las herramientas reales en `tools/`.

```
ALL_ASSETS/ps2/gfx/*.igb
        │
        │  tools/igb_lib.py (parser + decoders)
        ▼
   tools/export_all.py ──► exported/<categoría>/<nombre>/
                              ├── <nombre>_geoN.obj   (malla por geometría)
                              ├── <nombre>.mtl        (materiales → PNG)
                              ├── <nombre>.animations.json (keyframes)
                              └── textures/*.png
```

---

## 1. Herramientas

| Archivo | Función |
|---------|---------|
| `tools/igb_lib.py` | Librería principal: parser IGB v5, `IGB` class, extracción de mallas/texturas/animaciones/strings, export OBJ/MTL, decodificador de texturas |
| `tools/export_all.py` | Exportador por lotes de todo `ALL_ASSETS/ps2/gfx` → `exported/` |
| `tools/extract_geometry.py` | Utilidad independiente de extracción de geometría (usa `debug_geom.load_igb`) |
| `tools/convert_music.py` | Convierte `MUSIC/` y `VOICE/` (VAGp) a WAV → `converted/audio/` |
| `tools/convert_videos.py` | Convierte `VIDEO/` (SFD/MPEG-PS) a MP4 vía ffmpeg → `converted/video/` |
| `tests/test_basic.py` | Pruebas básicas del parser y decodificador VAGp |

---

## 2. Parser IGB v5

La clase `IGB(data)` parsea el archivo completo siguiendo el layout
documentado en `01_FORMATS.md` (header 48 bytes, meta-fields, structs,
refs, objetos y bloques de datos estáticos).

Puntos clave de la implementación:

- **Campos por tipo, no por slot.** El slot de cada campo cambia entre
  archivos, así que `decode_fields()` y `get_field(obj, slot)` resuelven
  contra la definición del struct (`igb.structs[id].fields`), no contra
  posiciones fijas. Los tipos se reconocen por el nombre del meta-field
  (`igVec3fMetaField`, `igMemoryRefMetaField`, etc.).
- **Refs.** Los campos de tipo ref almacenan un índice a la tabla `refs`.
  `ref_to_obj()` / `ref_to_data()` / `data_block_for()` mapean a objetos
  o a bloques de datos estáticos.
- **Strings.** `igStringMetaField` codifica `[len:u32][bytes]` alineado a 4;
  `igStringObj` guarda su contenido en un bloque de datos referenciado.

### Uso rápido

```python
import sys; sys.path.insert(0, 'tools')
from igb_lib import IGB

igb = IGB(open('ALL_ASSETS/ps2/gfx/chars/ncortex.igb','rb').read())
for mesh in igb.extract_meshes():            # List[Mesh]
    print(mesh.name, len(mesh.verts), len(mesh.faces))
for mat in igb.extract_textures():           # List[Material]
    print(mat.texture_name, mat.width, 'x', mat.height, hex(mat.fmt))
for anim in igb.extract_animations():        # List[Animation]
    print(anim.name, round(anim.duration,3), len(anim.channels), 'channels')
print(igb.extract_strings())                 # List[str] (nombres de anims, etc.)
```

---

## 3. Extracción de mallas

Flujo en `IGB.extract_meshes()` → `_mesh_from_geo()`:

1. **Buscar geometrías.** `find_geometry_attrs()` recorre el scene graph
   desde `top_object`. Los objetos `*List` con slot4 = MemoryRef a un bloque
   de datos contienen sub-refs que se siguen recursivamente (profundidad
   máx. 30). Fallback: escanear todos los objetos buscando structs
   `igGeometryAttr1_5`.
2. **Por geometría** (`igGeometryAttr1_5`):

   | Slot | Campo | Descripción |
   |------|-------|-------------|
   | 4    | VertexArray ref | objeto `igVertexArray1_1` / `igVertexArray` |
   | 6    | Prim type | enum: 3=triángulos, 4=tri-strip, 5=tri-fan |
   | 13   | PrimitiveList ref | longitudes de strips |

3. **Vertex array** (`igVertexArray`): slot2 = MemoryRef a la lista de
   sub-refs de buffers, slot3 = número de vértices. Cada sub-ref apunta a
   un bloque de datos. Los buffers se clasifican por **bytes por vértice**:

   | Bytes/vértice | Buffer |
   |---------------|--------|
   | 12            | posiciones (float32 ×3) o normales |
   | 4             | colores RGBA (u8 ×4) |
   | 8             | UVs (float32 ×2) |

4. **Primitivas.** La `igPrimitiveList` (slot13) expone en su slot2 un
   MemoryRef con las longitudes de strip (uint32[]). Según `prim_type` se
   generan triángulos, strips (con corrección de orden por paridad) o fans.
5. **Fallback secuencial.** Si `prim_ref == INVALID_REF` (no hay lista de
   índices, p.ej. `items/c.igb`), se genera un solo strip de `vcount`
   vértices: triángulos consecutivos sobre todos los vértices.

### Resultado validado (árbol completo)

- **507 mallas** en 153 archivos con geometría
- **57,250 vértices** / **42,246 triángulos**
- **0 índices fuera de rango** en todo el árbol
- Verificación por caja: los bounds de la malla del cetro coinciden
  exactamente con su `igAABox`

---

## 4. Extracción de texturas

`IGB.extract_textures()` recorre los objetos `igImage` y decodifica a RGBA
lineal. Como el layout de slots varía entre archivos, los campos se
emparejan **por tipo de meta-field**:

| Valor extraído | Cómo se localiza |
|----------------|------------------|
| width, height | 1er/2º `igUnsignedIntMetaField` |
| format | 1er `igEnumMetaField` |
| pixel data | 1er MemoryRef/RawRef |
| CLUT | 1er ObjectRef → objeto `*Clut` |
| source path | 1er `igStringMetaField` (→ nombre del PNG) |

El CLUT (`igClut`) se lee igual: enum = formato, uint = nº de colores,
MemoryRef = datos (formato 7 = RGBA32 lineal, 4 bytes/color).

### Formatos soportados (`decode_image_linear`)

Los datos de píxel en IGB son **lineales, no GS-swizzled** (a diferencia
de las texturas crudas del GS).

| fmt | Formato | Bytes/píxel | Notas |
|-----|---------|-------------|-------|
| `5`     | RGB888 | 3 | se expande a RGBA (α=255) |
| `7`     | RGBA8888 | 4 | copia directa |
| `0x10000` | PSMT8 indexado | 1 | requiere CLUT RGBA32 |
| `0x10001` | PSMT4 indexado | 0.5 | **low nibble primero**, requiere CLUT |

`decode_gs_texture()` (variante swizzled) queda como referencia para
texturas crudas de GS; la pipeline de IGB usa la variante lineal.

### Resultado validado

- **306 PNG** generados (formato 7 = RGBA8888 + CLUTs)
- Todos abren correctamente con PIL (0 corruptos)
- Verificados contra contenido conocido: icono de cristal del cetro,
  mina congeladora del cohete, gradiente suave (confirma el orden de
  nibbles del PSMT4)

---

## 5. Extracción de animaciones

`IGB.extract_animations()` procesa los objetos `igTransformSequence1_5`.
Cada secuencia es un **canal** (hueso × animación):

| Slot | Contenido | Tipo de lista |
|------|-----------|---------------|
| 2  | Translation keyframes | `igVec3fList` |
| 3  | Rotation keyframes | `igQuaternionfList` (x,y,z,w) |
| 4  | Scale keyframes | `igVec3fList` |
| 11 | Timestamps | `igLongList` |
| 18 | Duración total | `igLongMetaField` (u64) |

**Unidades:** los tiempos y duraciones son **tics de nanosegundos**;
`duration / 1e9` da segundos exactos (verificado con extanim de 10s, 5s y 6s).

### Agrupación en animaciones

Los canales que comparten **idéntica** (duración, array de timestamps)
pertenecen a la misma animación y se agrupan en una sola `Animation`.
Esto valida la sincronización entre huesos: en `chars/ncortex.igb`,
los 39 canales se agrupan en 16 animaciones sin ambigüedad.

Los nombres reales de las animaciones se obtienen con
`IGB.extract_strings()` (objetos `igStringObj`): `idle`, `smashed2idle`,
`tornado`, etc.

### Resultado validado

- **230 animaciones** en **134 archivos** JSON
- Ejemplo `chars/ncortex.igb` → anim12: duración 1.933 s, 7 canales, 26 keyframes

---

## 6. Exportación por lotes

```
python tools/export_all.py                 # todo el árbol gfx
python tools/export_all.py --models-only   # solo chars + karts
python tools/export_all.py --category chars,items
python tools/export_all.py --skip-anims    # sin JSON de animaciones
```

### Estructura de salida

```
exported/
  <categoría>/                    # chars, karts, items, weapons, mptracks...
    <nombre>/
      <nombre>_geoN.obj           # una malla por geometría (OBJ)
      <nombre>.mtl                # newmtl texN + map_Kd textures/<png>
      <nombre>.animations.json    # keyframes por animación/canal
      textures/*.png              # texturas decodificadas
```

- El MTL usa `newmtl texN` y `map_Kd textures\*.png`; el OBJ referencia el
  material con `usemtl`.
- Los archivos `.igb` que no son realmente IGB (texto/CSV) se saltan y se
  contabilizan como `non-IGB`.

### Totales del run final (limpio, todo el árbol `gfx`)

| Concepto | Cantidad |
|----------|----------|
| Archivos IGB exportados | 223 |
| Mallas (OBJ) | 507 |
| Vértices / triángulos | 57,250 / 42,246 |
| Texturas (PNG) | 306 |
| JSON de animaciones | 134 (230 animaciones) |
| MTL | 162 |
| Archivos no-IBG saltados | 207 |

Validación: todas las PNG abren con PIL (0 corruptas); 0 índices
fuera de rango en todo el árbol; `chars/ncortex.igb` → 16 animaciones
/ 39 canales (anim12: 1.933 s, 7 canales, 26 keyframes).

---

## 7. Audio: MUSIC y VOICE → WAV

`tools/convert_music.py` decodifica los `.VAGp`/`.VAG` de PS2 (ADPCM SPU2)
a PCM16/WAV usando `convert_vagp_to_wav.py` (en raíz).

```
python tools/convert_music.py     # MUSIC (estéreo pares .L/.R) + VOICE (mono .VAG)
                                  #   → converted/audio/{music,voice}
```

- **Música**: 46 parejas estéreo (`ARENA1.L/R` + variantes `*F`) → 46 WAV estéreo.
- **Voz**: 6104 archivos `.VAG` organizados por idioma (`ENG/SPA/FRE/...`) →
  6088 WAV mono (16 fallos aislados por formato viejo/no decodable).
- Los tiempos de decodificación son altos (ADPCM puro en Python): la música
  lleva ~700 s; la voz se paralelizó con `ProcessPoolExecutor` (el decode es
  CPU‑bound, por lo que los hilos no ayudan por el GIL).

---

## 8. Video: SFD → MP4

`VIDEO/` contiene 58 ficheros `.SFD` (Sony Format Definition = MPEG‑PS).

```
ffmpeg -y -i VIDEO/.../*.SFD -c copy -movflags +faststart converted/video/X.mp4
```

- 58/58 convertidos (stream‑copy, sin recodificar, ~2 min en total).
- Categorías: 27 `CUT/` (cinemáticas), 10 `INTRO/` (intro por idioma),
  21 `TRACKS/` (previsualizaciones por pista).

⚠️ Stream‑copy mantiene streams originales. Para recodificar a H.264/AAC
usar `-c:v libx264 -c:a aac` (más lento, ~min/archivo).

---

## 9. Sobre la carpeta `tracks/` — investigación confirmada

> "¿Dónde están las 26 pistas?"

Las 26 pistas existen en `ALL_ASSETS/ps2/gfx/tracks/` (y un espejo en
`mptracks/`), pero **casi ningún archivo es un IGB parseable**, de ahí que
`exported/tracks` esté vacío. Los hechos verificados:

- **0 ocurrencias de `0xFADA` (magic IGB) en `ASSETS.GFC` (88 MB, 1830 bloques
  STBL).** Las pistas **nunca fueron almacenadas como IGB** en el disco.
- El ELF `SLUS_206.49` declara las plantillas de ruta:
  `gfx/tracks/%s.igb` y `gfx/tracks/%s%s_levelinfo.igb` (sufijos: `boss_`,
  `advcry_`, …).
- El GFC contiene los metadatos de STBL para `gfx\tracks\advcry_arena1_levelinfo.igb`,
  `common\gfx\tracks\arena1_levelinfo.igb`, etc. — exactamente las **26
  pistas** esperadas (arena1-5, barin1-3, citadel, earth1-3, fenom1-3,
  hub1-5, lobby, teknee1-3, test0, velorace).
- Los `tracks/*.igb` en disco **son blobs binarios sin cabecera IGB**:
  `arena1.igb` es un PNG (banner) y el resto son **arrays float32 crudos**.
  Ej. `mptracks/citadel.igb` = 54072 bytes = **4506 vértices float3**
  (13518/3) con coordenadas en rango mundo (X≤342, Y≤102, Z≤279) y rellenos
  NaN/dead-zone (`0xCDCDCDCD`) intercalados.

**Conclusión:** la geometría de las pistas está en `gfx/tracks/<name>.igb`
como buffers float32 **sin contenedor IGB** (el extractor STBL descomprime el
blob pero el juego los carga con un loader propio `gfx/tracks/%s.igb`, no con
el sistema de escena IGB). `igb_lib` no puede leerlos porque falta la cabecera
que define layout de vértices/índices/UV — y **esa cabecera no existe en el GFC**
(0 ocurrencias de IGB magic).

**Estado:** 1 archivo parcial (solo JSON) se exporta por `mptracks/arena1.igb`
(que casualmente conserva `0xFADA`). El resto exige reverse-engineering del
formato raw de pistas y del loader `gfx/tracks/%s.igb` en `SLUS_206.49`, más la
extracción del GFC de los `_levelinfo.igb` asociados — trabajo de RE
independiente, fuera de la pipeline IGB actual.

La geometría de pistas disponible vía pipeline IGB: **3 mallas** en
`mptracks/arena1.igb`.

---

## 10. Limitaciones y trabajo pendiente

- `chars/crash.igb`, `coco.igb`, etc. guardan sus mallas como datos
  **float32 crudos** (no IGB); no son parseables por `igb_lib`. Sólo los
  archivos `.igb` con cabecera IGB válida (`0xFADA`) se exportan, de ahí
  que `chars/` produzca pocos archivos (la geometría real está en
  `ui/charmodels/`, `karts/`, etc.).
- `gfx/tracks/*.igb` son blobs/binarios sin IGB (PNG y datos crudos); no
  son geometría. Ver sección 9.
- El skinning/rigging (asociar canales de animación a huesos `igBone`) no
  está implementado: las animaciones se exportan como keyframes por canal.
- `decode_gs_texture()` (variante swizzled de GS) está sin probar; la
  pipeline IGB usa datos lineales.
