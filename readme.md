<!--
  :Author: Thiago Navarro
  :Email: thiago@oxyoy.com

  **Created at:** 06/15/2021 12:48:52 Tuesday
  **Modified at:** 09/17/2021 01:00:11 AM Friday

  ------------------------------------------------------------------------------

  readme
  ------------------------------------------------------------------------------
-->

# Formulas

Formulas is a Nim library that helps you calculate areas, volumes, edges, etc...

**Supports version 1.0.0!**

Now with configurable PI value!

**More formulas will be added soon**


----
## Tetrahedron

- area
- edge
- height
- volume

Example (`example/tetrahedron.nim`):
```nim
import formulas

var tetrahedron = initTetrahedron(edge = 10)

echo tetrahedron.area() # +- 173.2
echo tetrahedron.height() # +- 8.1
echo tetrahedron.volume() # +- 117.8

tetrahedron.volume = 117.85113019775793 # same as tetrahedron.volume()
tetrahedron.edge = 0

echo tetrahedron.edge() # 10
```

## Cone

- slant height
- side area
- total area
- volume
- radius
- height

Example (`example/cone.nim`):
```nim
import formulas

var cone = initCone(height = 10, radius = 8)

echo cone.slant() # 12.8

cone.slant = cone.slant() # set the slant value to the calculated one

echo cone.volume() # +- 670.2
echo cone.totalArea() # +- 522.9
echo cone.sideArea() # 321.8

cone.volume = cone.volume()
cone.radius = 0

echo cone.radius() # 8

cone.radius = 8
cone.height = 0

echo cone.height() # 10
```

## TODO

- [ ] Change the nimble package url from gitea to github

## License

MIT
