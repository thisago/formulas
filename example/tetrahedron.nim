#[
  Created at: 06/17/2021 21:57:11 Thursday
  Modified at: 09/17/2021 12:53:08 AM Friday

        Copyright (C) 2021 Thiago Navarro
  See file "license" for details about copyright
]#

import formulas

var tetrahedron = initTetrahedron(edge = 10)

echo tetrahedron.area() # +- 173.2
echo tetrahedron.height() # +- 8.1
echo tetrahedron.volume() # +- 117.8

tetrahedron.volume = 117.85113019775793 # same as tetrahedron.volume()
tetrahedron.edge = 0

echo tetrahedron.edge() # 10
