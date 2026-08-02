# Análisis del ELF: SLUS_206.49

## Información básica

- **Archivo:** `SLUS_206.49`
- **Plataforma:** PlayStation 2 (EE MIPS R5900)
- **Tamaño:** ~2.5 MB
- **Game ID:** SLUS-20649 (USA)
- **Región:** NTSC

## Configuración de Ghidra

### Paso 1: Instalar plugins

1. Descargar [EmotionEngineReloaded](https://github.com/abelbriggs1/ghidra-emotionengine-reloaded)
2. Instalar en `%GHIDRA_DIR%/Extensions/Ghidra/`
3. El plugin agrega soporte para:
   - Instrucciones MMI (Multiply-Accumulate) del EE
   - Modo macro de VU0
   - Tipos de datos del PS2SDK

### Paso 2: Importar ELF

1. Ghidra → File → Import File → seleccionar `SLUS_206.49`
2. Language: **MIPS:BE:32:default** (o R5900 si está disponible)
3. En Analysis Options:
   - Enable: **Data Reference**, **Function ID**, **Decompiler**
   - Disable: **Call-Fixup** (puede causar problemas con MIPS delay slots)

### Paso 3: Importar símbolos del SDK PS2

Los símbolos estándar del kernel PS2 se pueden importar desde:
- `ps2sdk/include/symbols.h`
- PCSX2 incluye `.mdebug` con funciones del kernel

### Funciones del kernel a buscar

```c
// Inicialización
sceGsResetGraph()       // Inicializar GS
sceGsPutIMR()           // Configurar registro IMR
sceDmaReset()           // Inicializar DMA

// Carga de assets
sceCdRead()             // Leer sector del DVD
sceCdSearchFile()       // Buscar archivo en el disco
sceSifLoadModule()      // Cargar módulo IRX

// Audio
sceSifSetDma()          // Transferencia DMA
sceSifWriteBackDCache() // Sincronizar cache

// I/O
scePadGetState()        // Estado del control
scePadRead()            // Leer input
```

## Estrategia de análisis

### 1. Localizar strings

Buscar en `.rodata` strings como:
- `.igb`, `.vag`, `.tga`, `.gfc` (formatos de archivo)
- `earth1`, `barin1`, `crash` (nombres de assets)
- `STBL`, `VAGp` (magic numbers)
- Nombres de pistas, personajes, power-ups

### 2. Identificar funciones de carga

Buscar:
- Llamadas a `sceCdRead` o funciones de lectura de DVD
- Manipulación de buffers de assets
- Referencias a `ASSETS.GFC`/`ASSETS.GOB`
- Descompresión zlib o rutinas de inflate

### 3. Sistema de físicas

Buscar:
- Cálculos vectoriales (producto punto, cruz, normalización)
- Simulación de karts (actualización de posición, velocidad)
- Colisiones (detección y respuesta)

### 4. Renderer

Buscar:
- Display lists (GIF DMA packets)
- VU1 microcode uploads
- Gestión de texturas (GS texture uploads)

### 5. Juntar piezas

Crear un archivo de mapa de funciones:
```csv
address,name,module,notes
0x00123400,loadTrack,AssetLoader,Carga geometría de pista
0x00124500,updateKart,Physics,Actualización física del kart
```

## Análisis dinámico con PCSX2

### Breakpoints útiles

| Dirección (estimada) | Evento |
|---------------------|--------|
| Inicio de `sceCdRead` | Lectura de disco (carga de assets) |
| `GS:Write` | Escritura al GS (render) |
| `SIF:SetDma` | Comunicación EE ↔ IOP |

### Memory search

Buscar en RAM durante la ejecución:
- Velocidad del kart (float32)
- Posición del kart (3×float32)
- Items (uint32)
- Turbo (boolean/float32)

### Hooks

Usar "Stub (NOP) Function" en PCSX2 para desactivar funcionalidad:
- Stub la función de daño → el kart no recibe daño
- Stub la función de turbo → el kart se mueve siempre a máxima velocidad

## Toolchain de desarrollo

Basado en `velocity-win-msvc-dbgopt.sln`:
- **IDE:** Visual Studio (MSVC)
- **Toolchain:** PS2SDK + Metrowerks CodeWarrior (posiblemente)
- **Build system:** Herramienta interna "velocity"
- **Lenguaje:** C++ (namespaces, clases, templates)

## Próximos pasos

1. ✅ Cargar ELF en Ghidra
2. ⬜ Identificar SDK imports (primeras 100 funciones)
3. ⬜ Mapear funciones de carga de assets
4. ⬜ Encontrar tablas de físicas
5. ⬜ Documentar funciones clave en FUNCTIONS.md
