# Formatos de Crash Nitro Kart (PS2)

## Visión general

Crash Nitro Kart usa un conjunto de formatos propietarios desarrollados por
Vicarious Visions para su motor **Velocity**. Los assets se empaquetan en
archivos contenedores y se cargan dinámicamente.

```
ASSETS.GFC + ASSETS.GOB  →  STBL → zlib → XML / IGB / VAGp / TGA / PNG
```

---

## 1. ASSETS.GFC (Game File Catalog)

Índice maestro que lista todos los bloques dentro de ASSETS.GOB.

### Header (20 bytes)

| Offset | Tamaño | Tipo | Descripción |
|--------|--------|------|-------------|
| 0x00   | 4      | u32  | Magic: `0x00008008` |
| 0x04   | 4      | u32  | Tamaño de ASSETS.GOB en bytes |
| 0x08   | 4      | u32  | Cantidad de bloques STBL |
| 0x0C   | 4      | u32  | Cantidad de entradas Section 1 |
| 0x10   | 4      | u32  | Desconocido (`0x0113`) |

### Section 1 (N × 12 bytes)

Cada entrada describe un bloque dentro del GOB:

| Offset | Tamaño | Tipo | Descripción |
|--------|--------|------|-------------|
| 0x00   | 4      | u32  | Offset dentro de ASSETS.GOB (big-endian) |
| 0x04   | 2      | u16  | f2_hi |
| 0x06   | 2      | u16  | f2_lo |
| 0x08   | 4      | u32  | Type ID |

Los offsets están alineados a `0x800` (sectores de DVD).

**Estado:** ✅ Documentado, pipeline de extracción funcional.

---

## 2. ASSETS.GOB (Game Object Bank)

Archivo contenedor de datos. Contiene bloques STBL alineados a 0x800 bytes.

### Bloque STBL

| Offset | Tamaño | Tipo | Descripción |
|--------|--------|------|-------------|
| 0x00   | 4      | char[4] | Magic: `STBL` |
| 0x04   | 1      | u8   | Formato: `0x7A` = zlib comprimido |
| 0x05   | 3      | u8[3] | Padding (ceros) |
| 0x08   | N      | ...  | Datos comprimidos (zlib) |

Los datos comprimidos pueden abarcar múltiples bloques de 0x800.
Se concatenan (sin los headers STBL intermedios) y se descomprimen.

### Datos descomprimidos

El contenido descomprimido es XML o texto estructurado que contiene:
- Nombres de archivos (.igb, .vag, .tga, .png, etc.)
- Metadatos de assets
- Referencias a otros bloques STBL

**Estado:** ✅ Documentado, descompresión funcional (1831 bloques procesados).

---

## 3. IGB v5 (Intrinsic Geometry Binary)

Formato principal de modelos 3D. Usado para personajes, karts, pistas,
objetos del hub, armas, y UI.

### Header (48 bytes)

| Offset | Tamaño | Tipo | Descripción |
|--------|--------|------|-------------|
| 0x00   | 4      | u32  | entryBufSize |
| 0x04   | 4      | u32  | entryCount |
| 0x08   | 4      | u32  | mObjBufSize (MetaObject buffer) |
| 0x0C   | 4      | u32  | mObjCount |
| 0x10   | 4      | u32  | objBufSize (Object data buffer) |
| 0x14   | 4      | u32  | objCount |
| 0x18   | 4      | u32  | mrefBufSize (Memory reference buffer) |
| 0x1C   | 4      | u32  | mrefCount |
| 0x20   | 4      | u32  | mfBufSize (MetaField buffer) |
| 0x24   | 4      | u32  | mfCount |
| 0x28   | 4      | u32  | Magic cookie: `0xFADA` (indica endianness) |
| 0x2C   | 4      | u32  | Version flags (low 16 bits = version, high bits = flags) |

### Version flags

| Bit | Máscara | Significado |
|-----|---------|-------------|
| 31  | 0x80000000 | Has Info block |
| 30  | 0x40000000 | Has External directories |
| 29  | 0x20000000 | Shared entries |
| 28  | 0x10000000 | Has Memory Pool names |
| 0-15| 0x0000FFFF | Version number (5 = v5) |

### Secciones del archivo

```
[Header 48 bytes]
[MetaField buffer]     ← definiciones de tipos de campo
[Align buffer]         ← datos de alineación
[MetaObject buffer]    ← definiciones de tipos de objeto
[External dirs]        ← (opcional) directorios externos
[Memory pool names]    ← (opcional)
[Entry buffer]         ← tabla de entradas
[Info section]         ← (opcional) strings de información
[Object buffer]        ← datos serializados de objetos
[Memory ref buffer]    ← datos de referencia (texturas, etc.)
```

### MetaField

Define un tipo de campo serializable:

| Offset | Tamaño | Tipo | Descripción |
|--------|--------|------|-------------|
| 0x00   | 4      | u32  | Longitud del nombre |
| 0x04   | 4      | u32  | Major version |
| 0x08   | 4      | u32  | Minor version |
| 0x0C   | N      | char[] | Nombre (ej. `igVec3fMetaField`) |

Tipos comunes: `Bool`, `Int`, `Float`, `Vec2f`, `Vec3f`, `Vec4f`,
`Matrix44f`, `String`, `ObjectRef`, `RawRef`, `MemoryRef`, `Enum`,
`Struct`, `*Array`.

### MetaObject

Define un tipo de objeto compuesto por campos:

| Offset | Tamaño | Tipo | Descripción |
|--------|--------|------|-------------|
| 0x00   | 4      | u32  | Longitud del nombre |
| 0x04   | 4      | u32  | Major version |
| 0x08   | 4      | u32  | Minor version |
| 0x0C   | 4      | u32  | Número de campos (nfields) |
| 0x10   | 4      | i32  | Parent index (-1 = none) |
| 0x14   | 4      | u32  | Slot count |
| 0x18   | 24     | u8[24] | Static entry (24 bytes por MO) |
| ...    | N      | char[] | Nombre (ej. `igVertexArray`) null-terminated |
| ...    | nf×6   | u16[3] | Field entries: `[mf_idx:u16, slot:u16, padding:u16]` |

**Field entry** (6 bytes cada una, después del nombre):

| Offset | Tamaño | Tipo | Descripción |
|--------|--------|------|-------------|
| 0x00   | 2      | u16  | MetaField index |
| 0x02   | 2      | u16  | Slot number |
| 0x04   | 2      | u16  | Padding/alignment |

### Info Section (opcional, cuando bit 31 de version flags está activo)

Sección de strings de información entre el Entry buffer y el Object buffer:

| Offset | Tamaño | Tipo | Descripción |
|--------|--------|------|-------------|
| 0x00   | 4      | u32  | refCount (número de referencias) |
| 0x04   | refCount×4 | u32[] | Array de referencias |
| ...    | 4      | u32  | strCount (número de strings) |
| ...    | strCount×(4+N) | (u32 + char[]) | Flags + string null-terminated |

**Nota:** Muchos archivos IGB v5 no tienen sección Info; en ese caso el Object buffer sigue inmediatamente al Entry buffer.

### Vertex Array (igVertexArray)

Los datos de geometría se almacenan en objetos `igVertexArray` con estos
slots (formato de 16 slots):

| Slot | Campo | Descripción |
|------|-------|-------------|
| 0    | Format | Tipo de dato (0x01=int16, 0x05=int16_N, 0x07=float32) |
| 1    | FormatHi | High byte del formato |
| 3    | VertexCount | Número de vértices |
| 4    | NormalRef | Referencia a datos de normales |
| 5    | UVRef | Referencia a datos de UV |
| 6    | PositionRef | Referencia a datos de posición |

### Formatos de vértice

- `fmt=0x01, fmtHi=0x01`: int16 empaquetado (6 int16s: XYZ + N normal byte)
- `fmt=0x05`: int16 (3 int16s por vértice, escalado 1/4096)
- `fmt=0x07`: float32 (3 floats por vértice)
- `fmt=0x01, fmtHi=0x02`: int16 + UV

### Primitive List (igPrimitiveList)

Define la conectividad de triángulos:

| Slot | Campo | Descripción |
|------|-------|-------------|
| 2    | DataRef | Referencia a datos de índices/longitudes |
| 3    | Count | Número de primitivas |

Los datos son longitudes de strips (uint32). El formato puede ser:
- Triángulos individuales (prim_type=3): cada longitud = número de triángulos
- Triangle strips (prim_type=4 o 5): longitudes de strip

### Archivos IGB conocidos

**Personajes** (ps2/gfx/chars/):
crash.igb, coco.igb, crunch.igb, dingodile.igb, ncortex.igb,
ngin.igb, noxide.igb, ntrance.igb, ntropy.igb, polar.igb,
pura.igb, tiny.igb, zam.igb, zem.igb, fakecrash.igb, realvelo.igb,
empvelo.igb, velominion.igb, master.igb, sfx.igb,
barinboss.igb, earthboss.igb, fenombigboss.igb, fenomlittleboss.igb,
tekneeboss.igb, tekneeminion.igb

**Karts** (ps2/gfx/karts/):
crash.igb, ncortex.igb, noxide.igb, ntrance.igb, boss.igb,
boss_geary.igb, boss_krunk.igb, boss_nash.igb, boss_norm_b.igb,
boss_norm_l.igb, boss_velo.igb

**Pistas** (ps2/gfx/tracks/ y ps2/gfx/mptracks/):
26 tracks cada uno (earth1-3, barin1-3, fenom1-3, teknee1-3,
arena1-5, citadel, velorace, hub1-5, lobby, test0)

**Estado:** ✅ Header y estructura general OK.
✅ Meta-fields y meta-objects parseados correctamente (nombres sin basura).
✅ Field entries de 6 bytes (mf_idx:u16, slot:u16, padding:u16).
⚠️ Parsing de objetos parcial (muchos resuelven a igObject en ciertos archivos).
⚠️ Extracción de geometría limitada (solo IGB v5 con scene graph; geometría PS2 usa raw float32).
⚠️ UV mapping implementado pero no verificado en todos los casos.
❌ Animaciones/skinning no implementado.

---

## 4. VAGp Audio

Formato de audio ADPCM usado para efectos de sonido, voces y música.

### Header (48 bytes)

| Offset | Tamaño | Tipo | Descripción |
|--------|--------|------|-------------|
| 0x00   | 4      | char[4] | Magic: `VAGp` |
| 0x04   | 4      | u32   | Version (`0x00000020`) |
| 0x08   | 4      | u32   | Número de samples |
| 0x0C   | 4      | u32   | Padding / flags |
| 0x10   | 4      | u32   | **Sample rate (Hz, big-endian)** |
| 0x14   | 12     | u8[12] | Padding |
| 0x20   | 16     | char[16] | **Nombre del archivo (padded, offset 0x20)** |

### Datos de audio

Los datos de audio comienzan en offset **0x30** (48). Usan ADPCM de PS2 SPU2:

- Bloques de 16 bytes → 16 samples PCM16
- 2 coeficientes de predicción fijos
- 4-bit nibbles con shift factor

### Archivos de música (MUSIC/)

Son pares estéreo VAGp:
- `EARTH1.L` / `EARTH1.R` → canal izquierdo/derecho
- `EARTH1F.L` / `EARTH1F.R` → variante "final lap" (más rápida)

92 archivos total (46 pares estéreo + sus variantes final lap).

### Archivos de voz (VOICE/)

Organizados por idioma:
```
VOICE/
  ENG/  → A/ AKU350.VAG, AKU351.VAG, ...  (organizado por letra)
  FRE/
  GER/
  ITA/
  SPA/
  DUT/
```

**Estado:** ✅ Formato documentado, decodificador funcional.
✅ Offsets verificados: magic@0, version@4, sample_rate@16 (BE), name@32, data@48.
✅ 541+ archivos convertidos a WAV.

---

## 5. SFD Video

Formato de video FMV estándar de PS2 (Sony Format Definition).

### Header

Los archivos .SFD comienzan con `00 00 01 BA` (MPEG-2 Program Stream).
Contienen:
- Video: MPEG-2 (probablemente 352×240 o 640×480)
- Audio: ADPCM (PS2 SPU2)
- Subtítulos (ocasionalmente)

### Archivos conocidos

**Cutscenes** (VIDEO/CUT/): SEQ01.SFD a SEQ27.SFD (27 archivos)
**Track previews** (VIDEO/TRACKS/): 18 archivos (uno por pista)
**Intros** (VIDEO/INTRO/): archivos de introducción

**Estado:** ✅ Formato identificado.
❌ Conversión/extract no implementado (usar ffmpeg externo).

---

## 6. Physics Data (CSV)

Los parámetros físicos están en archivos CSV de texto plano con comentarios.

### Archivos en common/physics/

| Archivo | Contenido |
|---------|-----------|
| `kabase.csv` | Parámetros base de karts |
| `kartrepel.csv` | Fuerzas de repulsión entre karts |
| `surfparm.csv` | Parámetros de superficie (fricción, agarre) |
| `kp<personaje>.csv` | Parámetros por personaje |

Ejemplos: kpcrash.csv, kpcortex.csv, kptiny.csv, kppolar.csv, etc.

### Formato CSV

```
#LoopPoint,#On,#off,#on,#off,#-1,#ActionZones,,
3,0,0,2.5,2.5,-1,azLeftFire,,
```

Cada archivo tiene parámetros con nombre y comentarios con `#`.

**Estado:** ✅ Documentado, archivos en texto plano legibles.

---

## 7. Animation Data (CSV)

Las animaciones de escenario están en archivos CSV.

### Archivos en common/animations/

```
earth1_anims.csv        → animaciones de la pista Earth 1
earth1_anim_sounds.csv  → eventos de sonido sincronizados
```

### Formato

```
#Anim_Name,#POS_X,#POS_Y,#POS_Z,#ROT_X,#ROT_Y,#ROT_Z,#ROT_ANGLE
citadelUI-anim-cam,0,0,0,0,0,1,0
```

### Archivos por pista

earth1-3, barin1-3, fenom1-3, teknee1-3, arena3-5, velorace, citadelui.

**Estado:** ✅ Formato identificado.
⚠️ No implementado su uso en exportación de animaciones 3D.

---

## 8. IRX Modules (IOP)

Módulos ejecutables para el IOP (MIPS R3000).

### Archivos en MODULES/

| Archivo | Propósito (estimado) |
|---------|---------------------|
| `CRI_ADXI.IRX` | Audio ADX (CRI Middleware) |
| `LIBSD.IRX` | Librería de sonido |
| `MCMAN.IRX` | Memory card manager |
| `MCSERV.IRX` | Memory card server |
| `PADMAN.IRX` | PlayStation controller |
| `SIO2MAN.IRX` | SIO2 manager (controller/memcard) |
| `SMAP.IRX` | Ethernet (online features) |
| `USBD.IRX` | USB driver |
| `MTAPMAN.IRX` | Multitap manager |
| `LGDEVW.IRX` | Lightgun device wrapper? |
| `VVAA.IRX` | **Propietario Vicarious Visions** (audio/video?) |
| `IOPRP255.IMG` | IOP firmware image |

**Estado:** ⚠️ Identificados pero no analizados.
`VVAA.IRX` es el más interesante por ser propietario.

---

## 9. Build Manifest (velocity-win-msvc-dbg.opt)

Archivo de lista de assets usado durante el desarrollo.

Contiene 1451 entradas listando todos los assets del juego:
```
lide.vag
.\ps2\audio\kartslid.vag
.\ps2\audio\kartpop.vag
...
```

Confirma:
- El motor se llama **Velocity**
- El desarrollo fue en Windows con Visual Studio
- Herramienta interna llamada "velocity" para empaquetar assets

**Estado:** ✅ Identificado, no requiere procesamiento adicional.

---

## Referencias

- PS2 GS Texture Formats: ps2tek (PSI-Rockin)
- MIPS R5900 ISA: Manual del SDK PS2 Linux
- VAG ADPCM: Documentación SPU2 de PS2
