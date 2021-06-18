##[
  :Author: Thiago Navarro
  :Email: thiago@oxyoy.com

  **Created at:** 06/17/2021 21:59:24 Thursday
  **Modified at:** 06/17/2021 10:02:19 PM Thursday

  ------------------------------------------------------------------------------

  cone
  ------------------------------------------------------------------------------

  An example of cone formulas usage
]##

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
