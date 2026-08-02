# Especificación del formato ASSETS.GFC (Game File Catalog)

> **Estado:** ✅ Documentado e implementado (`tools/extract_gfc.py`), con un
> punto pendiente de decodificación (los 333 hashes "de motor", ver §6).
> **Endianness:** big-endian en todo el archivo.
>
> **Nota:** Esta especificación corrige y amplía la sección 1 de `01_FORMATS.md`,
> que contenía errores (header de 20 bytes; bloques STBL de 8 bytes con padding).
> Los hechos aquí presentados se verificaron directamente sobre `ASSETS.GFC`
> (222968 bytes = 0x366F8) y `ASSETS.GOB` (88710144 bytes), y contra el parser
> de IGB en `tools/igb_lib.py`.

---

## Visión general

`ASSETS.GFC` es el índice maestro que lista **4327** bloques (`STBL`) dentro de
`ASSETS.GOB`. Cada bloque contiene un asset (IGB, PNG, CSV, HKE, VAGp, etc.),
opcionalmente comprimido con zlib. El GFC no guarda los datos; guarda:

* el recuento de bloques y el tamaño del GOB en el header (24 bytes);
* una **tabla maestra de registros** de 12 bytes cada uno a partir del offset 24
  (sección 3) con dos tipos de registro: **tipo-A** (1830, asociados a un nombre
  en el pool) y **tipo-B** (2498, sin nombre en el pool);
* un **pool de cadenas de nombre** donde cada entrada precede al nombre con
  campos constantes, un **CRC32** y un campo extra (sección 4).

---

## 1. Header (24 bytes, big-endian u32)

| Offset | u32 | Descripción |
|--------|-----|-------------|
| 0x00 | `0x00008008` | Magic `GFC` |
| 0x04 | `0x054BD800` | Tamaño de `ASSETS.GOB` (verificado: 88710144) |
| 0x08 | `0x000010E7` = **4327** | Recuento total de bloques STBL |
| 0x0C | `0x00000726` = **1830** | Recuento de registros tipo-A (con nombre) |
| 0x10 | `0x00000113` = 275 | Desconocido (metadato de sección) |
| 0x14 | `0x02458800` | Offset en GOB del primer bloque de datos |

> **Corrección importante:** los valores en 0x18–0x2C que una versión anterior de
> esta doc describía como "pares de sección" del header **no son header**: son
> los dos primeros registros de la tabla maestra (offset 24 y 36), ver §3.

---

## 2. Bloques STBL en ASSETS.GOB

Cada asset está en un bloque alineado. El marco de un bloque es **5 bytes**:

| Offset | Tamaño | Tipo | Descripción |
|--------|--------|------|-------------|
| 0x00 | 4 | `char[4]` | Magic `"STBL"` |
| 0x04 | 1 | `u8` | Formato: `0x7A` = zlib comprimido, `0x30` = datos sin comprimir |
| 0x05 | N | bytes | Carga útil: stream zlib **o** datos RAW |

Los bloques no están a distancia fija; el final de un bloque es el inicio del
siguiente `"STBL"` (o el final del GOB para el último). La enumeración exacta
encuentra **4327** bloques STBL, igual al header `[2]` — confirmación de que el
enmarcado es correcto.

Extracción de una carga:

```python
flag = gob[start+4]
raw  = gob[start+5 : next_STBL_start]
payload = zlib.decompress(raw) if flag == 0x7A else raw
```

El **tamaño de bloque almacenado** (campo `size` de los registros, §3) es el
tamaño *del marco completo*: `5 bytes (STBL+flag) + longitud(zlib/raw) + 4 bytes
de tráiler "ENBL"`. Verificado exacto en los 1827 registros con base válida.

> **Bloques de 64KB:** existe un subconjunto de bloques (ghost `.gst`, `.hke`
> de pistas y pantallas de carga `.png`) cuyo payload descomprimido/raw es
> **exactamente 65536 bytes** (slots fijos). Las `.png` de carga quedan
> **truncadas** dentro del slot (640x320, sin chunk `IEND`).

---

## 3. Tabla maestra de registros

A partir del offset **24**, el GFC es una secuencia de registros de **12 bytes**
`(campo0:u32, campo1:u32, campo2:u32)`. Escaneando de 12 en 12 se obtienen
**4328** registros (≈ 4327 bloques, desfase de borde), de dos tipos:

| Tipo | campo0 | campo1 | campo2 | Recuento |
|------|--------|--------|--------|----------|
| **A** | `0x00007FFF` | `size` (marco almacenado) | `base` en GOB | **1830** |
| **B** | `id` (secuencial: 346, 347, …) | `size` (pendiente de validar) | `base` en GOB | **2498** |

* Los registros **tipo-A** (con `campo0 == 0x7FFF` y `base` en la lista de STBL)
  son los **1829/1830 assets con nombre** en el pool de §4.
* Los registros **tipo-B** (sin nombre en el pool) ocupan los offsets restantes.
  Su campo `size` tal como se lee **no es fiable** (valores como 350/356/362 que
  no corresponden al bloque) → el layout de tipo-B está **pendiente de validar**.
* Los dos tipos **se intercalan** en el orden de la tabla; el orden del archivo
  es el orden de datos en el GOB.

```python
off = 24
while off + 12 <= len(gfc):
    a, b, c = struct.unpack(">III", gfc[off:off+12])
    if a == 0x7FFF and c in bmap:   # tipo-A
        ...
    off += 12
```

---

## 4. Pool de nombres (entradas del pool)

Cada nombre de asset vive en el pool de cadenas como ASCII `NUL`-terminado. El
registro que lo precede tiene esta disposición (verificada):

```
... [0xECFD1200] [0xECFD1200] [0x40000000]  ← campos constantes
    [campo_crc:u32]                        ← CRC32 del asset ANTERIOR (ver §5)
    [campo_extra:u32]                      ← sin relación con tamaño/offset
    [nombre:ASCII…\0]
```

El pool contiene **1829 nombres** (coincide con los registros tipo-A).

---

## 5. Descubrimiento clave: alineación posicional y CRC desplazado

Dos hechos verificados que permiten nombrar **todos** los assets tipo-A sin
necesidad de crackear el hash:

1. **Los nombres se alinean por posición:** `pool[i].nombre` es el nombre del
   i-ésimo registro tipo-A en orden de tabla. Verificado por contenido en los
   bloques con CRC coincidente y por tipos consistentes en los demás
   (los runs contiguos de `ghost*.gst`, `*.hke` y `*.png` de carga coinciden
   con el contenido real: PNG 640x320, `.gst`, `.hke`).

2. **El campo CRC del pool está desplazado:** `pool[i].crc = crc32(payload del
   registro que PRECEDE al tipo-A i en la tabla completa)`. Para la mayoría de
   entradas, el predecesor es el tipo-A `i-1`:
   `recC[i] == pool[i+1].crc` en **1496 / 1829** entradas.

```
idx  340 velorace_levelinfo.igb  poolCrc=F5A048D1  (= crc del rec 339)
idx  341 ..._ranking.csv         poolCrc=AED79CDA  (= crc del rec 340)
idx  344 ghost10-ntropy.gst      poolCrc=E7B6C945  (= crc del rec 343)  ✓ sigue la regla
idx  345 ghost10-velo.gst        poolCrc=CE2C945A  (= ???, el 333 comienza aquí)
```

---

## 6. Estado pendiente (333 hashes "de motor")

Los **333** bloques que NO tienen `crc32(payload)` en el pool son exactamente
los **slots de 64KB** (ghost `.gst` 344–369, `.hke` de pistas 447–471, pantallas
de carga `.png` 575–611, más otros runs). Son runs **contiguos** y su contenido
coincide con los nombres del pool → **el nombre por posición es correcto** y el
nombre completo de los 1829 assets tipo-A ya es alcanzable.

Lo que falta por explicar: qué hash guarda el pool en esas 333 entradas.
Hipótesis activa: `pool[i].crc = crc32(payload del registro tipo-B precedente)`
cuando entre dos tipo-A hay un tipo-B intercalado. Aún **no cuadra** (0/332)
porque el campo `size` de tipo-B no se ha descifrado (ver §3) — los payloads
leídos con esos tamaños son basura (crc idéntico `0x32F91F35` para muchos
bloques distintos).

**Próximo paso:** descifrar el layout de los registros tipo-B (probablemente no
es `(id, size, base)` — quizá `size` es otro offset/tipo de campo), extraer sus
payloads correctamente y comprobar si sus `crc32` cubren los 333 valores
pendientes. Si es así, el índice queda 100% resuelto.

---

## 7. Método de extracción actual (`tools/extract_gfc.py`)

1. Enumerar los 4327 bloques STBL y calcular `crc32(carga_útil)`.
2. **(a) CRC de contenido:** buscar ese CRC32 como `u32` big-endian **en todo el
   GFC**; si aparece, el nombre está a 8 bytes de la ranura (maneja assets con
   contenido duplicado: todos los slots con el mismo CRC reciben todos los nombres).
3. **(b) Alineación posicional:** para los registros tipo-A cuyo CRC no está en el
   pool (los 333 "hashes de motor"), usar `pool[recA_i + 1].nombre` — el pool está
   alineado 1:1 con los tipo-A en orden de tabla (ver §5).  El nombre se acepta
   siempre que la extensión del nombre coincida con la magia de contenido, o sea un
   formato binario-propietario (`igb/gst/hke/dat/dct/bin/opt`) cuyo contenido es
   opaco (`.bin`).  Si la extensión del nombre es un formato comprobable
   (png/vag/tga/csv) y **no** coincide con el contenido, se rechaza el nombre y se
   cae en el paso (c).
4. **(c) Magia de contenido (resguardo):** `block_NNNNN.<ext>` con
   `\x89PNG`→`.png`, `VAGp`@0→`.vag`, `2,#`/zlib-igb→`.igb`, texto imprimible→`.csv`,
   resto→`.bin`.

### Cobertura alcanzada

| Categoría | Resultado |
|-----------|-----------|
| Bloques STBL enumerados | 4327 ✅ |
| Registros tipo-A (con nombre) | 1830 ✅ |
| Assets con nombre por CRC32 (valor) | 1430 ✅ |
| Assets nombrados por alineación posicional (`pool[i+1]`) | 352 ✅ (validados) |
| Bloques sin nombre de pool → magia de contenido | 2545 (`block_NNNNN.<ext>`) |
| `gfx/tracks/*.igb` nombrados | todos los de la tabla ✅ |
| `hke/tracks/*.hke` nombrados | 10 / 10 ✅ |
| `audio/*.vag` nombrados | todos los de la tabla ✅ |
| `common/load/*.png` nombrados | todos los de la tabla ✅ |
| `common/ghost/*.gst` nombrados | todos los de la tabla ✅ |
| Directorios de árbol distintos | 77 ✅ |

### Validación

El pipeline completo **GFC-index → GOB-STBL → zlib → IGB → malla** se valida de
extremo a extremo con `tools/extract_geometry.py` + `tools/igb_lib.py`:

- **454/483** bloques `.igb` se cargan con `igb_lib.py` (94%). Los 29 restantes
  son contenido no-IGB mal etiquetado `.igb` (LevelInfo en texto, PNG, relleno
  `0xFFFFFFFF`) y no mallas.
- **313** de los 454 cargados exportan OBJ con geometría real (**531.307 vértices /
  424.771 triángulos / 1455 mallas**), p.ej. `ps2/gfx/mptracks/arena2.igb` → 32 mallas
  (25.036 v / 18.730 f), `common/gfx/tracks/arena1.igb` → 120 v / 100 t,
  `ps2/gfx/weapons/timecube.igb` → 38 v / 36 t.
- **141** de los 454 cargados exportan 0 vértices: son assets de datos (UI,
  `*_levelinfo.igb`, animaciones) sin `igGeometryAttr`, comportamiento esperado.
- La **static-data paginada** de los slots 64KB de `chars/karts/tracks/mptracks`
  (que sumaba >1MB por slot y no cabía en el archivo) **se recupera cosiendo los
  frames STBL que siguen al slot en ASSETS.GOB** — el GOB es un binario de slots
  fijos de 64KB (2313 de sus 4327 frames miden 65536 B). `extract_geometry.py` /
  `export_all.py` aceptan `--gob ASSETS.GOB --manifest ...` para el stitching
  (véase `docs/06_IGB_VARIANTS.md`). Con esto los walk errors caen de ~156 a 0.
- Los bloques `*_levelinfo.igb` exportan 0 vértices porque son assets de datos de
  nivel (no mallas), lo cual es el comportamiento esperado.

Además, la nube de nombres recuperados reproduce **íntegramente** la estructura de
árbol de CNK — `ps2/gfx/chars/*.igb`, `ps2/gfx/tracks/*.igb`, `ps2/gfx/karts/*.igb`,
`ps2/gfx/trophychars/*_l1.igb`/`*_w1.igb`, `ps2/gfx/extanim/*.igb`,
`common/audio/*.vag`, `common/ghost/*_ntropy.gst` / `*_velo.gst`,
`common/load/*.png`, `common/hke/tracks/*.hke` — y los bloques con formato
comprobable por magia de contenido (PNG, VAG) validan el emparejamiento:
**71** bloques posicionales cuya magia de contenido coincide con la extensión del
nombre del pool (p.ej. `load/arena2.png` → contenido `\x89PNG`,
`audio/akuin.vag` → contenido `VAGp`@offset 0).

Los pocos casos en los que la magia de contenido **no** coincide con la
extensión del nombre del pool (p.ej. `arena2_actions.csv` cuyo contenido es PNG,
o `bang.tga` cuyo contenido es PNG) se **rechazan** y se nombran por magia de
contenido en su lugar (`block_NNNNN.<ext>`), de modo que nunca se escribe un
nombre de pool contradictorio con el contenido.
