# Plan de Ingeniería Inversa — Crash Nitro Kart (PS2)

Pipeline interno: Velocity (nombre observado en archivos de build)
Tecnología de assets: IGB v5 (Intrinsic Geometry Binary)
Motor base: probablemente tecnología propia de Vicarious Visions relacionada con Intrinsic Alchemy 3.0
**Ejecutable:** SLUS_206.49 (EE MIPS R5900)  
**ID del disco (USA):** SLUS-20649  
**Desarrollador:** Vicarious Visions  
**Publicación:** 11 noviembre 2003

---

## 1. MAPA DE ARQUITECTURA DEL JUEGO

```
┌─────────────────────────────────────────────────────────┐
│  SLUS_206.49 (ELF MIPS R5900)                           │
│  ┌─────────────┐ ┌──────────┐ ┌───────────────────┐    │
│  │ Game Logic  │ │ Renderer │ │ Audio / I/O       │    │
│  │ (C++)       │ │ (GS+VU)  │ │ (IOP R3000 + IRX) │    │
│  └──────┬──────┘ └────┬─────┘ └────────┬──────────┘    │
│         │             │                │                │
│         ▼             ▼                ▼                │
│  ┌──────────────┐ ┌──────────┐ ┌──────────────┐        │
│  │ ASSETS.GFC   │ │ IGB v5   │ │ MODULES/*.IRX│        │
│  │ ASSETS.GOB   │ │ modelos  │ │ IOPRP255.IMG │        │
│  │ (STBL→zlib)  │ │ texturas │ │              │        │
│  └──────────────┘ └──────────┘ └──────────────┘        │
└─────────────────────────────────────────────────────────┘
```

### Sistema de archivos del disco

```
SYSTEM.CNF          → Boot config (BOOT2 = cdrom0:\SLUS_206.49;1)
SLUS_206.49         → ELF principal (MIPS R5900)
ASSETS.GFC          → Índice maestro (contiene tabla STBL + metadatos)
ASSETS.GOB          → Archivo contenedor de datos (bloques STBL + zlib comprimido)
MODULES/            → Módulos IRX para el IOP (audio, pad, USB, etc.)
IOPRP255.IMG        → Imagen del IOP (firmware + módulos)
MUSIC/              → Pistas de audio (formato por determinar)
VIDEO/              → Videos FMV (CUT, INTRO, TRACKS)
VOICE/              → Voces de personajes
LEG*.TGA            → Texturas de legal / pantalla de título
```

### Estructura de ASSETS.GFC / ASSETS.GOB

```
ASSETS.GFC (índice, 20 bytes header + N×12 bytes registros):
├── Header: [magic(0x00008008), gob_size, stbl_count, section1_count, unknown]
└── Section 1: STBL offset table (cada entrada: gob_offset, f2h, f2l, type_id)

ASSETS.GOB (datos, bloques alineados a 0x800):
└── Bloques STBL (formato 0x7A):
    ├── Header STBL + zlib header (78 9C)
    └── Datos comprimidos → descomprimir → XML / nombres / config
```

### Pipeline de extracción actual

```
ASSETS.GOB
  │ parse STBL blocks at 0x800 boundaries
  ▼
STBL (signature + zlib stream)
  │ zlib.decompress()
  ▼
XML / named files (con referencias a .igb, .vag, .tga, etc.)
  │ lookup by name → find raw IGB/VAG data blocks
  ▼
IGB v5 parser → geometry + textures
VAGp decoder → WAV audio
```

---

## 2. ESTADO ACTUAL DEL PROYECTO

### ✅ Completado

| Componente | Estado |
|---|---|
| Extracción GFC/GOB | Pipeline completo y confiable |
| Parsing STBL / descompresión zlib | 1831 bloques procesados |
| Parser IGB v5 (geometría + texturas) | Funciona para la mayoría de archivos |
| Exportación de pistas a OBJ | ~26 pistas exportadas (parcial) |
| Conversión VAGp → WAV | 541 archivos de audio |
| Texturas convertidas | HUB, HUD, chars, karts, items, UI, fonts |
| Physics CSVs | Parseados y documentados (kabase.csv, kp*.csv) |
| Animaciones CSV | Tablas de animaciones por pista |
| Análisis binario | CSV con 2527 entradas, detección de formatos |
| Archivos de desarrollo | velocity-win-msvc-dbg.opt (1451 entradas, build manifest) |
| Carpetas organizadas | ALL_ASSETS con separación common/ps2/xbox |

### ⏳ Parcial

| Componente | Estado |
|---|---|
| UV / materiales en OBJ exportado | No implementado |
| Geometría de Citadel | Solo un mesh parcial extraído |
| Modelos de personajes y karts | IGB parseado pero sin animación |
| Hub world completo | Texturas sí, geometría parcial |
| Animaciones de personajes | No implementado |

### ❌ No iniciado

| Componente | Estado |
|---|---|
| MUSIC/ (92 archivos) | Sin analizar |
| VIDEO/ (CUT, INTRO, TRACKS) | Sin analizar |
| ELF SLUS_206.49 | Sin desensamblar |
| IRX modules (12 archivos) | Sin analizar |
| Animaciones IGB (bones/skinning) | No implementado |
| Formato de terreno/pistas (navegación, collision) | No analizado |
| Scripts del juego / lógica de carreras | No analizado |
| Diferencias PS2 vs GC vs Xbox | No explorado |
| Herramientas GUI / viewer 3D | No iniciado |

---

## 3. ROADMAP: DE PRINCIPIANTE A EXPERTO

### Fase 0: Fundamentos (si empiezas de cero)

```
1. Aprender MIPS R5900 assembly (EE)
   └→ Recurso: Manual de ISA R5900 (PDF del SDK PS2 Linux)
   └→ Práctica: Escribir pequeño programa MIPS, compilar con ps2sdk

2. Entender arquitectura PS2
   └→ EE, VU0/VU1, GS, IOP, DMA, GIF, VIF
   └→ Recurso: ps2tek (PSI-Rockin GitHub), manuales SDK

3. Aprender a usar Ghidra / IDA para MIPS
   └→ Ghidra + plugin EmotionEngineReloaded
   └→ Importar ELF, navegar, renombrar funciones

4. Conceptos de formato de archivos
   └→ Binarios, endianness, offsets, alignment
   └→ Python struct, memoryview, hex editor
```

### Fase 1: Completar extracción de assets (tú estás aquí)

```
Objetivos inmediatos:
1. ✅ Pipeline GFC/GOB → STBL → zlib → archivos (completado)
2. ✅ Parser IGB v5 básico (completado)
3. ⏳ UV mapping en OBJ exportado (añadir texcoords)
4. ⏳ Citadel: depurar geometría principal
5. ❌ Music: identificar formato (posiblemente STR/SSEQ/SAD)
6. ❌ Video: analizar formato FMV (posiblemente STR/PMF)
7. ❌ Todos los .igb → OBJ con texturas

Entregables:
- Script extract_all_assets.py unificado
- Documentación de FORMATOS.md con headers IGB
- Viewer 3D básico (OpenGL/WebGL) para inspeccionar modelos
```

### Fase 2: Análisis del ELF (SLUS_206.49)

```
1. Cargar ELF en Ghidra + EmotionEngineReloaded
   └→ Identificar secciones: .text, .data, .rodata, .sbss
   └→ Buscar strings del juego (referencias a IGB, nombres de pistas)

2. Mapear librerías SDK PS2
   └→ sceCdRead, sceGsPutIMR, sceDmaChanSync, etc.
   └→ PS2SDK .symtab → importar símbolos del kernel

3. Identificar funciones clave
   └→ Carga de assets (abrir GFC/GOB, buscar stbl_read)
   └→ Renderer (inicialización GS, GIF DMA tags)
   └→ Física (kart dynamics, collision detection)
   └→ Audio (IOP communication, SIF, VAG playback)

4. Reconstruir estructuras
   └→ KartState, PlayerInfo, TrackData
   └→ Usar PCSX2 debugger + búsqueda en RAM

Entregables:
- SLUS_206.49.gpr (Ghidra project)
- Mapa de funciones con nombres reconstruidos
- Documento FUNCTIONS.md con funciones clave
```

### Fase 3: Animaciones y skinning

```
1. Analizar estructura de animación en IGB
   └→ Buscar huesos (joints) dentro del IGB
   └→ Identificar matrices de transformación
   └→ Formato de keyframes (pos, rot, scale)

2. Implementar skinning en parser IGB
   └→ Vertex weights + bone indices
   └→ Exportar a glTF con animaciones

3. Ver人物ajes jugables completos
   └→ Crash, Coco, Cortex, Tiny, etc.
   └→ Karts con ruedas animables

Entregables:
- Parser IGB completo con animación
- Exportador glTF con skins
- Demos de personajes animados
```

### Fase 4: Física y gameplay

```
1. Analizar físicas de karts
   └→ Parámetros en CSVs (kabase.csv, kpcrash.csv, etc.)
   └→ Buscar en ELF las funciones de simulación
   └→ Reconstruir modelo físico (masa, fricción, suspensión)

2. Sistema de power-ups
   └→ Identificar items en IGB (cajas, armas)
   └→ Lógica en ELF (efectos, duración, colisiones)

3. IA de oponentes
   └→ Rubber-banding, path following
   └→ Dificultad por personaje

4. Sistema de pistas
   └→ Datos de navegación (waypoints, triggers)
   └→ Zonas de acción (azLeftFire, azRightFire en kabase.csv)
   └→ Shortcuts y objetos destructibles

Entregables:
- Documento PHYSICS.md con modelo completo
- Simulador básico de física de kart
- Herramienta de edición de parámetros
```

### Fase 5: Herramientas y reconstrucción

```
1. Editor de pistas visual
   └→ Importar IGB → editar geometría → exportar
   └→ Editar waypoints, collision, zonas

2. Convertidor batch de assets
   └→ IGB → glTF/OBJ/FBX con texturas
   └→ VAGp → WAV/OGG
   └→ Video CNK → MP4

3. Documentación completa de formatos
   └→ IGB v5 spec completa
   └→ STBL / GFC / GOB spec
   └→ VAGp audio spec
   └→ Animation data spec

4. (Opcional) Motor compatible
   └→ Implementar renderer OpenGL que cargue IGB
   └→ Soporte para shaders PS2 (GS)
   └→ Demo jugable en PC (reemplazo de motor)
```

---

## 4. HERRAMIENTAS NECESARIAS

### Esenciales (instalar ya)

| Herramienta | Propósito | Alternativa gratuita |
|---|---|---|
| **Python 3.10+** | Scripts de extracción y análisis | — |
| **Ghidra 11+** | Desensamblado MIPS R5900 + decompilador C | — |
| **Plugin EmotionEngineReloaded** | Soporte VU0/VU1 en Ghidra | — |
| **PCSX2 (dev build)** | Emulador + debugger + memory search | — |
| **Hex editor (ImHex / 010 Editor)** | Análisis binario manual | ImHex (gratuito) |
| **Noesis** | Visualización de modelos 3D | — |

### Recomendadas

| Herramienta | Propósito |
|---|---|
| **ps2dis** | Desensamblado rápido de ELF (legacy, windows) |
| **radare2 / Cutter** | RE en terminal, scripting en r2 |
| **VGMToolbox** | Extracción de audio (STR, XA, ADPCM) |
| **QuickBMS + scripts** | Extracción de archives empaquetados |
| **7-Zip** | Exploración de ISO y extracción rápida |
| **Blender** | Visualización y edición de modelos exportados |
| **Cheat Engine** | Búsqueda de variables en RAM (via PCSX2) |
| **ps2sdk + ps2link** | Debug remoto en PS2 real (si tienes hardware) |

### Scripts propios (a crear)

| Script | Propósito |
|---|---|
| `extract_all.py` | Pipeline completo GFC/GOB → archivos nombrados |
| `igb_to_gltf.py` | Convertir IGB v5 a glTF (con UV, texturas, animación) |
| `vagp_to_wav.py` | Convertir todos los VAGp a WAV (ya existe parcial) |
| `analyze_elf.py` | Extraer funciones, strings, símbolos del ELF |
| `export_track_road.py` | Extraer geometría de pista con UV y materiales |
| `compare_platforms.py` | Comparar assets PS2 vs GC vs Xbox |

---

## 5. ESTRUCTURA DE CARPETAS RECOMENDADA

```
CrashNitroKart/                          ← raíz del proyecto RE
├── PLAN_RE.md                           ← este documento
├── README.md                            ← resumen público del proyecto
│
├── iso/                                 ← copia de seguridad (no compartir)
│   └── SLUS_206.49.iso
│
├── elf/                                 ← ejecutables extraídos
│   ├── SLUS_206.49                      ← ELF principal
│   └── modules/                         ← IRX modules
│
├── ghidra/                              ← proyectos Ghidra
│   ├── SLUS_206.49.gpr
│   ├── SLUS_206.49_analysis/
│   └── scripts/                         ← scripts Python/Java para Ghidra
│
├── assets/                              ← assets extraídos y organizados
│   ├── raw/                             ← extracción directa del GOB
│   │   ├── stbl/                        ← bloques STBL individuales
│   │   └── namelist/                    ← archivos nombrados
│   ├── models/                          ← modelos 3D
│   │   ├── chars/                       ← personajes (crash.igb, coco.igb, ...)
│   │   ├── karts/                       ← vehículos
│   │   ├── tracks/                      ← pistas (earth1.igb, barin1.igb, ...)
│   │   ├── mptracks/                    ← pistas multijugador
│   │   ├── hubworld/                    ← objetos del hub
│   │   ├── items/                       ← power-ups y armas
│   │   └── ui/                          ← elementos de interfaz
│   ├── audio/                           ← audio convertido
│   │   ├── vagp_orig/                   ← VAGp original
│   │   ├── wav/                         ← WAV convertido
│   │   ├── music/                       ← pistas de música
│   │   └── voice/                       ← voces
│   ├── video/                           ← videos FMV
│   ├── textures/                        ← texturas en PNG
│   ├── physics/                         ← CSVs de física
│   └── animations/                      ← CSVs de animaciones
│
├── exported/                            ← archivos exportados a formatos estándar
│   ├── obj/                             ← modelos OBJ
│   │   ├── tracks/
│   │   ├── chars/
│   │   └── karts/
│   ├── gltf/                            ← modelos glTF (con texturas y animación)
│   └── textures/                        ← texturas en formatos estándar
│
├── analysis/                            ← resultados de análisis
│   ├── binary_analysis.csv              ← análisis binario de bloques
│   ├── stbl_report.csv                  ← reporte de STBL blocks
│   ├── track_report.csv                 ← geometría extraída por pista
│   ├── function_map.csv                 ← funciones identificadas en ELF
│   └── string_dump.txt                  ← strings extraídos del ELF
│
├── docs/                                ← documentación técnica
│   ├── 01_ARCHITECTURE.md               ← arquitectura del juego
│   ├── 02_FORMATS.md                    ← especificación de formatos
│   │   ├── IGB_v5.md
│   │   ├── GFC_GOB_STBL.md
│   │   ├── VAGp_AUDIO.md
│   │   └── ANIMATION.md
│   ├── 03_ELF_ANALYSIS.md               ← análisis del ejecutable
│   ├── 04_PHYSICS.md                    ← modelo físico
│   ├── 05_TRACKS.md                     ← geometría de pistas
│   └── 06_TOOLS.md                      ← guía de herramientas
│
├── tools/                               ← herramientas desarrolladas
│   ├── extract/                         ← scripts de extracción
│   │   ├── extract_gfc_gob.py
│   │   ├── extract_named.py
│   │   └── extract_videos.py
│   ├── convert/                         ← scripts de conversión
│   │   ├── igb_parser.py
│   │   ├── igb_to_gltf.py
│   │   ├── vagp_to_wav.py
│   │   └── decode_texture.py
│   ├── analyze/                         ← scripts de análisis
│   │   ├── analyze_elf.py
│   │   ├── analyze_binaries.py
│   │   └── analyze_structure.py
│   └── viewer/                          ← visualizador 3D
│       └── igb_viewer.py
│
├── tests/                               ← pruebas unitarias
│   ├── test_igb_parser.py
│   ├── test_extract.py
│   └── test_convert.py
│
└── refs/                                ← referencias externas
    ├── ps2_sdk_docs/                    ← documentación SDK PS2
    ├── r5900_isa.pdf                    ← manual del CPU
    ├── gs_users_manual.pdf              ← manual del Graphics Synthesizer
    └── links.md                         ← enlaces útiles
```

---

## 6. QUÉ ARCHIVOS ANALIZAR PRIMERO (priorizado)

### Prioridad 1: Completar pipeline de assets

```
1. ASSETS.GFC / ASSETS.GOB
   └→ Ya extraído, pero documentar el formato completo

2. IGB v5 (earth1.igb como archivo de prueba)
   └→ Ya parseado, falta: UV, materiales, huesos
   └→ earth1.igb es la pista más simple para debugging

3. common/physics/kabase.csv
   └→ Ya legible, documentar cada parámetro

4. Un archivo VAGp de VOICE/
   └→ Ya convertido, documentar header VAGp
```

### Prioridad 2: Cerrar gaps grandes

```
5. MUSIC/ (un archivo, ej. MUSIC/BGM_earth1)
   └→ Identificar formato (probable STR, SSHQ, o raw PCM)

6. VIDEO/CUT/ (un archivo FMV)
   └→ Identificar códec (probable MPEG2 PS, STR, o raw)

7. ps2/gfx/mptracks/citadel.igb
   └→ Depurar por qué falla la geometría
```

### Prioridad 3: Análisis del código

```
8. SLUS_206.49 (.text section)
   └→ Ghidra: buscar strings, importar símbolos SDK
   └→ Identificar funciones de carga de assets

9. MODULES/VVAA.IRX
   └→ Módulo propietario de Vicarious Visions (audio? video?)
   └→ Desensamblar con Ghidra (MIPS R3000)
```

### Prioridad 4: Documentación y consolidación

```
10. Comparar ps2/ vs common/ vs xbox-prof.dat
    └→ Identificar diferencias entre plataformas

11. ALL_ASSETS/velocity-win-msvc-dbg.opt
    └→ Build manifest completo → lista maestra de assets

12. velocity-win-msvc-dbgopt.sln
    └→ Visual Studio solution → posibles pistas del toolchain
```

---

## 7. PARTES MÁS DIFÍCILES

### 🔴 Dificultad extrema

| Área | Por qué es difícil |
|---|---|
| **Microcódigo VU0/VU1** | Las VUs tienen su propio ISA, no hay decompilador C; hay que leer assembly VU. El microcódigo está embebido en el ELF como datos, hay que encontrar los bloques manualmente. |
| **Animación con skinning** | IGB v5 contiene huesos y pesos, pero la estructura exacta de la matriz de skinning y el formato de keyframes requiere ingeniería inversa del código de renderizado en el ELF. |
| **Pipeline de rendering PS2 (GIF/DMA/VIF)** | El GS usa un pipeline de renderizado fijo con DMA tags y VIF packets. Entender cómo se empaquetan las display lists requiere rastrear el flujo desde el EE hasta el GS. |
| **Sistema de pistas (terreno)** | Las pistas no son solo geometría estática. Tienen datos de navegación, zonas de acción, collision mesh, shortcuts, y objetos dinámicos. Todo esto está en formatos desconocidos dentro del IGB o en bloques separados. |

### 🟡 Dificultad alta

| Área | Por qué es difícil |
|---|---|
| **Desensamblado del ELF** | 1.5MB+ de código MIPS optimizado, sin símbolos. El compilador reordena instrucciones (delay slots), usa instrucciones MMI (SIMD) del EE. |
| **Formato de video FMV** | Si es STR (formato común PS2), hay que encontrar el códec (posiblemente MPEG2 o un códec propietario). Si es raw, hay que entender el flujo de YUV. |
| **Formato de música** | Podría ser secuencias MIDI con banco de samples (formato SSD/SEQ de CRI), o pistas de audio comprimido. CRI ADX está presente en los IRX (CRI_ADXI.IRX). |
| **IA de oponentes** | Lógica de rubber-banding, path following, selección de items. Dispersa en el ELF, difícil de aislar. |

### 🟢 Dificultad media-baja

| Área | Por qué es más fácil |
|---|---|
| **Pipeline GFC/GOB** | Ya resuelto. STBL + zlib es directo. |
| **IGB v5 básico** | Ya parseado (geometría + texturas). Solo falta UV y materiales. |
| **Conversión VAGp** | Formato conocido (VAG, variante PS2 con header). 541 archivos ya convertidos. |
| **Physics CSVs** | Texto plano, parámetros con nombres legibles. |
| **Animaciones CSV** | Formato simple con nombres de animación y transforms. |

---

## 8. CÓMO DOCUMENTAR CADA DESCUBRIMIENTO

### Sistema de documentación técnica

Cada formato debe documentarse con una especificación en `docs/FORMAT_*.md` usando esta plantilla:

```markdown
# FORMATO: [Nombre] (extensión)

## Resumen
[qué contiene, para qué se usa]

## Especificación técnica

### Header (offset 0x00)
| Offset | Tamaño | Tipo | Descripción |
|--------|--------|------|-------------|
| 0x00   | 4      | char[4] | Magic number (ej. "STBL") |
| 0x04   | 1      | u8   | Format type (0x7A = zlib) |
| 0x05   | 3      | u8[3] | Padding / flags |
| 0x08   | ...    | ...  | ... |

### Estructuras internas
[descripción de structs con diagramas si aplica]

### Notas de implementación
[detalles importantes, endianness, alineación]

### Referencias en el ELF
[si se han identificado funciones que leen/escriben este formato]

### Estado de análisis
[x] Header documentado
[ ] Cuerpo documentado
[ ] Parsing implementado
[ ] Exportación funciona
```

### Conventions de nomenclatura en scripts

```python
# Constantes
IGB_MAGIC = 0xFADA
STBL_SECTOR_SIZE = 0x800

# Variables
gob_data = open(gob_path, "rb").read()
stbl_blocks = find_stbl_blocks(gob_data)

# Funciones: verbo + sustantivo
parse_igb_header(data)
extract_geometry(igb)
export_to_obj(mesh, path)
```

### Control de versiones

```bash
git commit -m "igb_parser: support UV coordinates (stride-16 vertex format)"
git commit -m "track_export: fix citadel main track geometry (wrong index buffer)"
git commit -m "docs: add IGB v5 format specification"
```

Cada commit debe:
- Ser atómico (un cambio lógico por commit)
- Incluir en el mensaje QUÉ cambió y POR QUÉ
- Referenciar el archivo/documento relevante

---

## 9. ERRORES COMUNES AL DECOMPILAR JUEGOS ANTIGUOS

### Error #1: Asumir que el ELF contiene todo el código
**Realidad:** Mucha lógica puede estar en microcódigo VU (embebido como datos) o en scripts compilados. En CNK, los shaders y transformaciones 3D corren en las VUs.

### Error #2: No verificar endianness
**Realidad:** PS2 es big-endian (MIPS). Xbox es little-endian. GC/PowerPC es big-endian. Confundir endianness produce lecturas incorrectas de offsets y tamaños.

### Error #3: Ignorar la alineación a sector
**Realidad:** PS2 lee de DVD en bloques de 0x800 (2048) bytes. ASSETS.GOB está alineado a 0x800. Los offsets que no respetan esto son pistas de datos embebidos.

### Error #4: Buscar formatos "estándar" donde no los hay
**Realidad:** Los juegos de esta era usan formatos propietarios. IGB es de Vicarious Visions. No esperes encontrar OBJ, FBX, o COLLADA en el disco.

### Error #5: Decompilar todo el ELF de golpe
**Realidad:** 1.5MB de código MIPS es abrumador. Enfócate en funciones específicas (búsqueda por strings, syscalls conocidas). Usa PCSX2 para poner breakpoints en funciones sospechosas.

### Error #6: No usar análisis dinámico
**Realidad:** El código estático sin ejecución te pierde la mitad de la imagen. Usa PCSX2 debugger: memory search para encontrar variables, breakpoints en syscalls, stub functions para aislar comportamiento.

### Error #7: Asumir que "IGB" = todos los datos de un modelo
**Realidad:** IGB v5 contiene referencias a texturas, huesos, animaciones, y materiales que pueden estar en otros bloques del GOB o incluso en archivos separados.

### Error #8: No documentar mientras se descubre
**Realidad:** Lo que hoy es obvio, en 3 meses será incomprensible. Documenta cada estructura en el momento, aunque sea tentativo.

### Error #9: Ignorar las versiones entre plataformas
**Realidad:** PS2, GameCube, Xbox, y GBA tienen diferencias en assets, resolución de texturas, y a veces geometría completa. Lo que funciona en PS2 puede no aplicar a GC.

### Error #10: Compartir el ISO o binarios completos
**Realidad:** Legalmente sensible. Trabaja solo con tu copia. Comparte scripts y documentación, no los datos originales.

---

## 10. EJEMPLOS DE SCRIPTS ÚTILES

### 10.1 IGB Header Dump

```python
#!/usr/bin/env python3
"""Dump header de un archivo IGB v5."""

import struct, sys

def dump_igb_header(path):
    with open(path, 'rb') as f:
        data = f.read(0x40)  # header size
    
    endian = '<' if struct.unpack('<I', data[0x28:0x2C])[0] == 0xFADA else '>'
    hdr = struct.unpack(endian + '12I', data[:0x30])
    
    fields = [
        ('entryBufSize', hdr[0]),
        ('entryCount', hdr[1]),
        ('mObjBufSize', hdr[2]),
        ('mObjCount', hdr[3]),
        ('objBufSize', hdr[4]),
        ('objCount', hdr[5]),
        ('mrefBufSize', hdr[6]),
        ('mrefCount', hdr[7]),
        ('mfBufSize', hdr[8]),
        ('mfCount', hdr[9]),
        ('magicCookie', hdr[10]),
        ('verFlags', hdr[11]),
    ]
    
    version = hdr[11] & 0xFFFF
    flags = {
        'hasInfo': bool(hdr[11] & 0x80000000),
        'hasExternal': bool(hdr[11] & 0x40000000),
        'sharedEntries': bool(hdr[11] & 0x20000000),
        'hasMemoryPoolNames': bool(hdr[11] & 0x10000000),
    }
    
    print(f"File: {path}")
    print(f"Version: {version}")
    print(f"Endian: {'LE' if endian == '<' else 'BE'}")
    print(f"Flags: {flags}")
    print("Header fields:")
    for name, val in fields:
        print(f"  {name:20s} = {val} (0x{val:X})")

if __name__ == '__main__':
    dump_igb_header(sys.argv[1])
```

### 10.2 Extraer texturas PS2 (GS)

```python
#!/usr/bin/env python3
"""Decodificar textura PS2 desde raw GS data."""

# PS2 GS texture formats:
# 0 = PSMT8  (8-bit paletted)
# 1 = PSMT4  (4-bit paletted)
# 2 = PSMT8H (8-bit paletted + alpha)
# 3 = PSMT4HL (4-bit paletted + alpha)
# 4 = PSMT4HH (4-bit paletted + alpha)
# 5 = PSMCT32 (32-bit RGBA)
# 6 = PSMCT24 (24-bit RGB)
# 7 = PSMCT16 (16-bit RGB)
# 8 = PSMCT16S (16-bit RGB + 1-bit alpha)
# 9 = PSMT8M (8-bit monochrome)
# 10 = PSMT4M (4-bit monochrome)

GS_TEX_FORMATS = {
    0: ('PSMT8', 8),
    5: ('PSMCT32', 32),
    7: ('PSMCT16', 16),
}

def decode_gs_texture(data, width, height, fmt=5, pal_data=None):
    """
    Decodificar textura PS2 GS a raw RGBA.
    fmt=5 (PSMCT32) es el más común en CNK.
    """
    if fmt == 5:  # PSMCT32: 32-bit RGBA, swizzled
        pixels = bytearray(width * height * 4)
        for y in range(height):
            for x in range(width):
                # GS swizzle (page-based)
                page_x = x // 64
                page_y = y // 32
                in_page_x = x % 64
                in_page_y = y % 32
                src_off = (page_y * (64*32) + page_x * (64*32) + 
                          in_page_y * 64 + in_page_x) * 4
                dst_off = (y * width + x) * 4
                pixels[dst_off:dst_off+4] = data[src_off:src_off+4]
        return bytes(pixels)
    # ... otros formatos
    raise NotImplementedError(f"Format {fmt} not implemented")
```

### 10.3 Buscar estructuras en el ELF con Ghidra (Python)

```python
# Script para Ghidra: buscar referencias a strings de assets
# Ejecutar desde Script Manager en Ghidra

from ghidra.program.model.listing import CodeUnit
from ghidra.program.model.address import AddressSet

def find_asset_refs():
    """Buscar referencias a nombres de assets en el ELF."""
    monitor = getMonitor()
    listing = currentProgram.getListing()
    mem = currentProgram.getMemory()
    
    # Strings comunes de CNK
    targets = ['.igb', '.vag', '.tga', '.gfc', '.gob', 'stbl']
    
    results = {}
    for target in targets:
        results[target] = []
    
    # Buscar en .rodata
    rodata = currentProgram.getSymbolTable().getSymbols(".rodata")
    # ... búsqueda de strings
    
    print("Assets references found:")
    for target, addrs in results.items():
        print(f"  {target}: {len(addrs)} references")
```

---

## 11. REFERENCIAS Y RECURSOS

### Documentación técnica PS2
- R5900 ISA manual (PDF, PS2 Linux kit)
- VU0/VU1 ISA manual
- Graphics Synthesizer User's Manual
- ps2tek (github.com/PSI-Rockin/ps2tek) — documentación comunitaria

### Herramientas
- Ghidra: ghidra-sre.org
- EmotionEngineReloaded: github.com/abelbriggs1/ghidra-emotionengine-reloaded
- PCSX2: pcsx2.net
- Noesis: richwhitehouse.com
- ps2sdk: github.com/ps2dev/ps2sdk

### Ingeniería inversa de juegos similares
- Crash Team Racing (PS1) — Naughty Dog, formato similar
- Jak & Daxter (PS2) — Naughty Dog, GOAL engine
- Spyro (PS2) — Vicarious Visions (misma época)

### Comunidad
- psx-place.com (sección PS2)
- r/ps2 (Reddit)
- discord.gg/ps2dev (canal de desarrollo PS2)
- ghidra discord (canal de reverse engineering)

---

## APÉNDICE: CRONOGRAMA SUGERIDO

```
Semana 1-2:   Pipeline assets completo, UV mapping en OBJ
              Music/Video format identification
              IGB parser: texturas a PNG (batch)

Semana 3-4:   ELF: carga en Ghidra, mapeo de SDK
              Funciones: asset loading, rendering
              IGB: estructura de metafields completa

Semana 5-6:   Animaciones IGB (bones, keyframes)
              Exportación glTF con skins
              MPTracks: geometría de citadel resuelta

Semana 7-8:   Física: reconstruir modelo de kart
              Physics CSVs → documentación
              Power-ups y items

Semana 9-10:  IA de oponentes
              Waypoints y navegación de pistas
              Sistema de cámaras

Semana 11-12: Viewer 3D funcional
              Herramientas de conversión batch
              Documentación completa de formatos
```

---

*Documento creado para el proyecto de investigación y preservación de Crash Nitro Kart. No incluye datos protegidos por derechos de autor. Solo metodología y hallazgos técnicos.*
