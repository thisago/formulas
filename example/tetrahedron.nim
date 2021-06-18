##[
  :Author: Thiago Navarro
  :Email: thiago@oxyoy.com

  **Created at:** 06/17/2021 21:57:11 Thursday
  **Modified at:** 06/18/2021 08:45:30 AM Friday

  ------------------------------------------------------------------------------

  tetrahedron
  ------------------------------------------------------------------------------

  This is a example of tetrahedron formulas uses
]##

import formulas

var tetrahedron = initTetrahedron(edge = 10)

echo tetrahedron.area() # +- 173.2
echo tetrahedron.height() # +- 8.1
echo tetrahedron.volume() # +- 117.8

tetrahedron.volume = 117.85113019775793 # same as tetrahedron.volume()
tetrahedron.edge = 0

echo tetrahedron.edge() # 10
