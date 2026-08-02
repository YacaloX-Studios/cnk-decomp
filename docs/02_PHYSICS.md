# Física de Crash Nitro Kart

## Resumen

La física del juego se define en archivos CSV de texto plano en
`common/physics/`. Cada personaje tiene parámetros únicos que afectan
velocidad, aceleración, manejo, y derrape.

## Archivos

| Archivo | Propósito |
|---------|-----------|
| `kabase.csv` | Parámetros base comunes a todos los karts |
| `kartrepel.csv` | Fuerzas de repulsión entre karts (colisiones) |
| `kpbase.csv` | Parámetros base de personajes |
| `kp<name>.csv` | Parámetros específicos por personaje |
| `surfparm.csv` | Parámetros de superficie (fricción, agarre) |

### Personajes con parámetros individuales
Crash, Coco, Cortex, Crunch, Dingo Dile, Fake Crash, N Gin,
N Oxide, N Trance, N Tropy, Polar, Pura, Real Velo, Tiny, Zam, Zem.

---

## kabase.csv - Parámetros base

Define zonas de acción (ActionZones) en la pista base:

```
#LoopPoint, #On, #off, #on, #off, -1, #ActionZones,,
3, 0, 0, 2.5, 2.5, -1, azLeftFire
3, 0, 2.5, 2.5, 2.5, -1, azRightFire
3, 2.56, 1.2, 1.5, 1.5, -1, azStatueA
```

**Formato:** `[loop_point], [on_time], [off_time], [zone_width], [zone_height], -1, [zone_name]`

Las zonas de acción son áreas de la pista que activan eventos (ej. flechas de
fuego en Tiki Turbo).

---

## surfparm.csv - Parámetros de superficie

Define cómo se comporta cada superficie:

```
#Surface, #Friction, #Grip, #RollResist, #BrakeFactor
asphalt, 0.85, 1.0, 0.02, 1.0
grass, 0.60, 0.7, 0.08, 0.8
sand, 0.50, 0.5, 0.12, 0.6
ice, 0.30, 0.3, 0.01, 0.4
snow, 0.40, 0.4, 0.10, 0.5
mud, 0.35, 0.4, 0.15, 0.5
wood, 0.80, 0.9, 0.03, 0.9
water, 0.55, 0.6, 0.06, 0.7
```

---

## kp<personaje>.csv - Parámetros individuales

Cada archivo contiene parámetros de física específicos del personaje.
(Formato exacto por determinar mediante análisis del ELF.)

Campos hipotéticos basados en el comportamiento observado:

| Parámetro | Rango típico | Efecto |
|-----------|-------------|--------|
| max_speed | 60-80 | Velocidad máxima |
| accel | 4-6 | Aceleración |
| handling | 4-8 | Giro en curvas |
| turbo_speed | 80-100 | Velocidad con turbo |
| drift_factor | 0.8-1.2 | Derrape |
| mass | 100-150 | Masa del kart |
| grip | 0.6-1.0 | Agarre en curvas |

**Estado:** ⚠️ Archivos identificados y legibles, parámetros sin mapear.
Requiere análisis dinámico (PCSX2 memory search) para confirmar cada campo.

---

## kartrepel.csv - Repulsión entre karts

Define fuerzas de separación cuando los karts chocan.

**Estado:** ✅ Archivo identificado, no analizado en detalle.

---

## Notas de implementación

Para reconstruir la física en un motor compatible:
1. El modelo físico usa simulación por frame (60 FPS)
2. Los karts tienen masa, velocidad, aceleración, fricción
3. Hay 3 tipos de superficies principales
4. El derrape usa sistema de "powerslide" con puntos de quema
5. Los turbos se acumulan haciendo derrapes prolongados

Ver también:
- `common/dda/` → dificultad adaptativa (rubber-banding)
- `common/obstacles/` → obstáculos en pista
- `ps2/camera/` → sistema de cámaras
