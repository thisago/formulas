#[
  Created at: 06/17/2021 21:59:24 Thursday
  Modified at: 09/17/2021 12:52:56 AM Friday

        Copyright (C) 2021 Thiago Navarro
  See file "license" for details about copyright
]#


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
