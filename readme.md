<!--
  :Author: Thiago Navarro
  :Email: thiago@oxyoy.com

  **Created at:** 06/15/2021 12:48:52 Tuesday
  **Modified at:** 06/17/2021 11:21:26 AM Thursday

  ------------------------------------------------------------------------------

  readme
  ------------------------------------------------------------------------------
-->

# Formulas

Formulas is a Nim library that helps you calculate areas, volumes, edges, etc...

Now with configurable PI value!

**More formulas will be added soon**

----
## Tetrahedron

- area
- edge
- height
- volume

Example:
```nim
import formulas

var tetrahedron = initTetrahedron(edge = 10)

echo tetrahedron.area # +- 173.2
echo tetrahedron.height # +- 8.1
echo tetrahedron.volume # +- 117.8

tetrahedron.volume = 117.85113019775793

echo tetrahedron.edge # 10
```

## Cone

- slant height
- side area
- total area
- volume
- radius
- height

Example:
```nim
import formulas

var cone = initCone(height = 10, radius = 8)

echo cone.volume # +- 670.2
echo cone.totalArea # +- 522.9
echo cone.sideArea # 321.8

cone.volume = 670.2064327658226
cone.height = 0

echo cone.height # 10
```
