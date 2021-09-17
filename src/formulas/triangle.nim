#[
  Created at: 06/16/2021 09:57:16 Wednesday
  Modified at: 09/17/2021 12:58:19 AM Friday

        Copyright (C) 2021 Thiago Navarro
  See file "license" for details about copyright
]#

##[
  **WIP**

  Triangle Formulas

  https://en.wikipedia.org/wiki/Triangle
]##

import ./base
import math

type
  Triangle = object of Shape
    baseEdgeVal*, edgeVal*, parallelSectionVal*, heightVal*: float

# Init

func initTriangle*(baseEdge, edge, parallelSection, height: SomeNumber = 0): Triangle =
  ## Creates new Triangle
  Triangle(
    baseEdgeVal: float baseEdge,
    edgeVal: float edge,
    parallelSectionVal: float parallelSection,
    heightVal: float height,
  )

# Setters

func `baseEdge=`*(self: var Triangle, value: SomeNumber) = self.baseEdgeVal = float value
func `edge=`*(self: var Triangle, value: SomeNumber) = self.edgeVal = float value
func `parallelSection=`*(self: var Triangle, value: SomeNumber) = self.parallelSectionVal = float value
func `height=`*(self: var Triangle, value: SomeNumber) = self.heightVal = float value

# Calculations

func slant*(self: Triangle): float =
  ## Calculates the cone slant height with height and radius
  doAssert self.heightVal != 0, "No height provided"
  doAssert self.radiusVal != 0, "No radius provided"
  sqrt(pow(self.heightVal, 2) + pow(self.radiusVal, 2))

func sideArea*(self: Triangle): float =
  ## Calculates the cone side area (cm2) with slant height and radius
  doAssert self.radiusVal != 0, "No radius provided"
  doAssert self.slantVal != 0, "No slant provided"
  self.pi * self.radiusVal * self.slantVal

func totalArea*(self: Triangle): float =
  ## Calculates the cone total area (cm2) with slant height and radius
  doAssert self.radiusVal != 0, "No radius provided"
  doAssert self.slantVal != 0, "No slant provided"
  self.pi * self.radiusVal * (self.radiusVal + self.slantVal)

func volume*(self: Triangle): float =
  ## Calculates the cone volume with height and radius
  doAssert self.heightVal != 0, "No height provided"
  doAssert self.radiusVal != 0, "No radius provided"
  (self.pi * pow(self.radiusVal, 2) * self.heightVal) / 3

func radius*(self: Triangle): float =
  ## Calculates the cone radius with height and volume
  doAssert self.heightVal != 0, "No height provided"
  doAssert self.volumeVal != 0, "No volume provided"
  sqrt((3 * self.volumeVal) / (self.pi * self.heightVal))

func height*(self: Triangle): float =
  ## Calculates the cone height with height and volume
  doAssert self.radiusVal != 0, "No radius provided"
  doAssert self.volumeVal != 0, "No volume provided"
  (self.volumeVal * 3) / (self.pi * pow(self.radiusVal, 2))


when isMainModule:
  var cone = initTriangle(height = 10, radius = 8)

  echo cone.slant # 12.8
  echo cone.sideArea # 321.6
  echo cone.totalArea # 522.7
  echo cone.volume # 670.2

  cone.pi = 3.14

  echo cone.slant # 12.8
  echo cone.sideArea # 321.6
  echo cone.totalArea # 522.7
  echo cone.volume # 670.2

  cone.volume = 670.2064327658226
  cone.radius = 0
  echo cone.radius # 8

  cone.volume = 670.2064327658226
  cone.radius = 8
  cone.height = 0
  echo cone.height # 10
