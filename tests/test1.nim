##[
  :Author: Thiago Navarro
  :Email: thiago@oxyoy.com

  **Created at:** 06/15/2021 10:23:57 Tuesday
  **Modified at:** 06/16/2021 11:29:08 AM Wednesday

  ------------------------------------------------------------------------------

  test1
  ------------------------------------------------------------------------------

  Testing all formulas
]##

import unittest

import ./formulas
from std/math import nil


proc round(x: SomeFloat): int =
  math.round(x).int

suite "Tetrahedron":
  setup:
    var tetrahedron = initTetrahedron(edge = 10)

  test "Area":
    check tetrahedron.area.round == 173
  test "Height":
    tetrahedron.height = 12
    check tetrahedron.height.round == 8
  test "Volume":
    tetrahedron.volume = 10
    check tetrahedron.volume.round == 118
  test "Edge":
    tetrahedron.edge = 0
    tetrahedron.volume = 4.23
    check tetrahedron.edge.round == 3

suite "Cone":
  setup:
    var cone = initCone(height = 10, radius = 8)

  test "Slant height":
    check cone.slant.round == 13
  test "Side area":
    check cone.sideArea.round == 322
  test "Total area":
    check cone.totalArea.round == 523
  test "Volume":
    check cone.volume.round == 670
  test "Radius":
    cone.volume = 670.2
    cone.radius = 0
    check cone.radius.round == 8
  test "Height":
    cone.volume = 670.2
    cone.radius = 8
    cone.height = 0
    check cone.height.round == 10
