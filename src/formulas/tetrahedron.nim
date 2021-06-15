##[
  :Author: Thiago Navarro
  :Email: thiago@oxyoy.com

  **Created at:** 06/14/2021 10:35:59 Monday
  **Modified at:** 06/15/2021 10:17:53 AM Tuesday

  ------------------------------------------------------------------------------

  tetrahedron
  ------------------------------------------------------------------------------

  Math formulas

  https://www.matematica.pt/en/useful/math-formulas.php
]##

import math

import ./base

# Tetrahedron

type
  Tetrahedron = object of Shape
    areaVal*, edgeVal*, heightVal*, volumeVal*: float

# Init

func initTetrahedron*(area, edge, height, volume: SomeNumber = 0): Tetrahedron =
  ## Creates new tetrahedron
  Tetrahedron(
    areaVal: float area,
    edgeVal: float edge,
    heightVal: float height,
    volumeVal: float volume
  )

# Setters

func `area=`*(self: var Tetrahedron, value: SomeNumber) = self.areaVal = float value
func `edge=`*(self: var Tetrahedron, value: SomeNumber) = self.edgeVal = float value
func `height=`*(self: var Tetrahedron, value: SomeNumber) = self.heightVal = float value
func `volume=`*(self: var Tetrahedron, value: SomeNumber) = self.volumeVal = float value

# Calculations

func area*(self: Tetrahedron): float =
  ## Calculates the tetrahedron area with edge
  assert self.edgeVal != 0
  pow(self.edgeVal, 2) * sqrt 3.0
func height*(self: Tetrahedron): float =
  ## Calculates the tetrahedron height with edge
  assert self.edgeVal != 0
  (self.edgeVal * sqrt 6.0) / 3
func volume*(self: Tetrahedron): float =
  ## Calculates the tetrahedron volume(cm3) with edge
  assert self.edgeVal != 0
  (pow(self.edgeVal, 3) * sqrt 2.0) / 12
func edge*(self: Tetrahedron): float =
  ## Calculates the tetrahedron edge with volume(cm3)
  assert self.volumeVal != 0
  cbrt((self.volumeVal * 12) / sqrt 2.0)


when isMainModule:
  var tetrahedron = initTetrahedron(edge = 10)
  echo tetrahedron.area

  tetrahedron.edge = 12.0
  echo tetrahedron.height

  tetrahedron.edge = 10
  echo tetrahedron.volume

  tetrahedron.edge = 0
  tetrahedron.volume = 4.23
  echo tetrahedron.edge
