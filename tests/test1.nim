##[
  :Author: Thiago Navarro
  :Email: thiago@oxyoy.com

  **Created at:** 06/15/2021 10:23:57 Tuesday
  **Modified at:** 06/15/2021 12:20:11 PM Tuesday

  ------------------------------------------------------------------------------

  test1
  ------------------------------------------------------------------------------

  Testing all formulas
]##
import unittest

import ./formulas
from std/math import nil

var tetrahedron = initTetrahedron()

proc round(x: SomeFloat): int =
  math.round(x).int

suite "Tetrahedron":
  test "Area":
    tetrahedron.edge = 10
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
