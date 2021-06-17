##[
  :Author: Thiago Navarro
  :Email: thiago@oxyoy.com

  **Created at:** 06/16/2021 09:57:16 Wednesday
  **Modified at:** 06/17/2021 09:43:18 AM Thursday

  ------------------------------------------------------------------------------

  cone
  ------------------------------------------------------------------------------

  Cone Formulas

  https://en.wikipedia.org/wiki/Cone
]##

import ./base
import math

type
  Cone = object of Shape
    slantVal*, totalAreaVal*, heightVal*, radiusVal*, volumeVal*: float
    pi*: float ## Convigurable PI value

# Init

func initCone*(slant, totalArea, height, radius, volume: SomeNumber = 0; pi = PI): Cone =
  ## Creates new Cone
  Cone(
    slantVal: float slant,
    totalAreaVal: float totalArea,
    heightVal: float height,
    radiusVal: float radius,
    volumeVal: float volume,
    pi: float pi,
  )

# Setters

func `slant=`*(self: var Cone, value: SomeNumber) = self.slantVal = float value
func `totalArea=`*(self: var Cone, value: SomeNumber) = self.totalAreaVal = float value
func `height=`*(self: var Cone, value: SomeNumber) = self.heightVal = float value
func `radius=`*(self: var Cone, value: SomeNumber) = self.radiusVal = float value
func `volume=`*(self: var Cone, value: SomeNumber) = self.volumeVal = float value

# Calculations

func slant*(self: Cone): float =
  ## Calculates the cone slant height with height and radius
  doAssert self.heightVal != 0, "No height provided"
  doAssert self.radiusVal != 0, "No radius provided"
  sqrt(pow(self.heightVal, 2) + pow(self.radiusVal, 2))

func sideArea*(self: Cone): float =
  ## Calculates the cone side area (cm2) with slant height and radius
  doAssert self.radiusVal != 0, "No radius provided"
  var slantVal = self.slantVal
  if slantVal == 0:
    slantVal = self.slant()
  self.pi * self.radiusVal * slantVal

func totalArea*(self: Cone): float =
  ## Calculates the cone total area (cm2) with slant height and radius
  doAssert self.radiusVal != 0, "No radius provided"
  var slantVal = self.slantVal
  if slantVal == 0:
    slantVal = self.slant()
  self.pi * self.radiusVal * (self.radiusVal + slantVal)

func volume*(self: Cone): float =
  ## Calculates the cone volume with height and radius
  doAssert self.heightVal != 0, "No height provided"
  doAssert self.radiusVal != 0, "No radius provided"
  (self.pi * pow(self.radiusVal, 2) * self.heightVal) / 3

func radius*(self: Cone): float =
  ## Calculates the cone radius with height and volume
  doAssert self.heightVal != 0, "No height provided"
  doAssert self.volumeVal != 0, "No volume provided"
  sqrt((3 * self.volumeVal) / (self.pi * self.heightVal))

func height*(self: Cone): float =
  ## Calculates the cone height with height and volume
  doAssert self.radiusVal != 0, "No radius provided"
  doAssert self.volumeVal != 0, "No volume provided"
  (self.volumeVal * 3) / (self.pi * pow(self.radiusVal, 2))


when isMainModule:
  var cone = initCone(height = 10, radius = 8)

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
