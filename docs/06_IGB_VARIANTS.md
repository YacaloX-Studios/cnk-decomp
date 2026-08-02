# IGB variant classification (from gfc_extracted/*.igb)

Total `.igb` files: 483

## Estado del parser (tras el soporte de slot-binary en `igb_lib.IGB`)

- **Parseean OK (igb_lib.IGB): 454** de 483.
  - v2 "limpio" (CRC-match, tamaños 6K–55K): refs/objects/data completos, geometría exportable.
  - **Slot binario 64KB** (`len==0x10000`, magic `0xFADA`@40): la mayoría de chars/karts/tracks/
    mptracks/trophychars. Parsean igual: son IGB v2 con **counts de sección inflados** (describen
    el slot reservado de 64KB, no el payload real) y los **bloques de static-data paginados**
    (suman >64KB → no caben en el archivo).
- **No son IGB (29):** fallan `ValueError('not an IGB file (magic ...)')`. Contenido no-IGB
  clasificado `.igb` por magic-fallback del extractor: texto `0A0D2930`/`3B3B3B3B` (LevelInfo),
  `0x64726177`="draw" (texto), `0x614D7265`="arma", `0x0B000073`, `0x0000000E`, `0xFFFFFFFF`
  (fill), PNG mislabeled. Son data, no mallas.

## Por qué fallaba el slot binario 64KB antes de `igb_lib` (y por qué ya no)

La variante "slot binario CNK" **no era un formato distinto**: es IGB v2 envuelto en un slot
de 65536 bytes:

```
[5 x (size:u32, count:u32)][magic 0xFADA][version 0x80000005]
[types][shader][structs][refs][top][objects][static-data]
[0xFFFFFFFF / trailer / relleno 0x00 hasta 65536]
```

- `size@0` (= `u32@0`, p.ej. coco=0x8C78, crash=0xF4A0) apunta a un `0xFFFFFFFF` en el
  interior del archivo, pero **no es un terminador de sección** — es un campo `u3=-1` de un
  DATA ref real. No debe usarse como límite.
- Los **counts de sección están inflados** (reservan el slot): `refs`/`objects`/`data` pueden
  declarar miles de entradas pero el payload real es menor. Tipos (49) y structs (~83-92) sí
  son fiables.
- Los **bloques de static-data** totalizan 1.1–1.2 MB (p.ej. arena2=664 refs DATA que suman
  1,187,741 B) → **no caben en un solo archivo de 64KB**. El slot es un window de la escena
  virtual; la geometría (igGeometry/igVertexArray) está descrita en los objetos, pero los
  buffers de vértices referenciados **continúan en los frames STBL que siguen al slot en el
  GOB** (páginas de datos de 64KB). Se recuperan concatenando el tail del slot + esas páginas
  (véase "La static-data paginada SÍ es recuperable" más abajo).

### Fixes aplicados en `igb_lib.IGB`

1. `_read_refs`: rompe cuando la entrada deja de parecer un ref válido (`ref_type∉{3,4}`,
   `ref_size∉{16,28}`, `ref_unk≠0`) en vez de confiar en el count inflado.
2. `_read_objects`: rompe en `struct_id==0xFFFFFFFF` / `size<8`; si un blob final se corta en
   EOF, conserva lo que quepa y para.
3. `_read_static_data`: rompe si `ds` es `0xFFFFFFFF` o excede los bytes restantes (data paginada).
4. `_read_all`: tolera `struct.error` en `top_object` (EOF en slots truncados).
5. `data_is_complete()` + `reconstruct_data_blocks()`: re-slicen los DATA-ref blocks desde el
   stream slot-tail + páginas siguientes del GOB (ver `extract_gfc.GobFrameIndex`).

`debug_geom.load_igb` ahora delega en `igb_lib.IGB` y devuelve el mismo tuple
`(types, structs, refs, objs, data_blocks, top)` que espera `extract_geometry.py`.

## Resultados de exportación de geometría (extract_geometry.py sobre los 483 .igb)

| Resultado | Cantidad |
|-----------|----------|
| OBJ con vértices | **313** (531,307 vértices / 424,771 caras / 1455 mallas; p.ej. arena2→32 mallas, 25,036v/18,730f, crash→chasis 6 mallas, coco→rig) |
| Parsean pero 0 vértices | 141 (UI buttons con `prim_ref=INVALID`, levelinfo, anim-cam, fonts) |
| Error en el walk de geometría | **0** (la data paginada ya se recompone) |
| No IGB (29) | los de la tabla de arriba |

Nota: antes de la recomposición de páginas eran **157** OBJ (50,523v / 40,307f) con ~156
"walk errors". La recuperación de páginas añade **156** archivos nuevos (todos los slots).

## La static-data paginada SÍ es recuperable (recomposición de páginas)

La data "paginada" de los slots **no está perdida**: vive en los frames STBL que siguen al
slot dentro de ASSETS.GOB. El GOB es un binario de **slots fijos de 64KB** (2313 de sus 4327
frames miden exactamente 65536 B). Cada slot-IGB va seguido de una racha de páginas de datos:

```
[slot IGB arena2.igb @ 0x3586800]  -> scene graph + primeros ~10KB de data
[página 1 @ 0x358a800] 65536 B      -> continuación del stream de data
[página 2 @ 0x3591800] 65536 B      -> ...
[ ... hasta cubrir sections[3].size = 1,105,148 B ... ]
[slot IGB arena3.igb]               -> siguiente asset
```

El slot guarda en su cola el **prefijo** del área de data virtual; las páginas siguientes
continúan el **mismo byte stream**. `IGB.reconstruct_data_blocks(next_payloads)` concatena
la cola del slot + las páginas hasta alcanzar `sections[3]['size']` y re-corta los bloques
según los DATA refs (400/400 para arena2, 1105148 B exactos).

Implementación:
- `tools/igb_lib.py`: `data_is_complete()` y `reconstruct_data_blocks()`.
- `tools/extract_gfc.py`: `GobFrameIndex` (índice lazy de frames STBL, payloads descomprimidos).
- `tools/extract_geometry.py` y `tools/export_all.py`: `--gob ASSETS.GOB --manifest ...`
  activan el stitching por archivo. `export_all.py` por defecto recorre `gfc_extracted`.

## Variantes menores que no son mallas

| Variante | Cantidad | Contenido |
|----------|----------|-----------|
| texto `;;;` / `0A0D2930` / `0D293028` (LevelInfo) | ~20 | data, sin mallas |
| texto `0x64726177`="draw" | 2 | data extanim |
| `0x614D7265`="arma" | 2 | data hud/maps |
| PNG mislabeled `.igb` | 2 | texturas HUD (naming quirk) |
| `0x0B000073` / `0x0000000E` / `0xFFFFFFFF` fill | 3 | data |
