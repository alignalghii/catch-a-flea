module PointTest where

import Point

testPointModule :: Bool
testPointModule = testOrig && testVecPlus && testVecMult

testOrig :: Bool
testOrig = orig == (0,0)

testVecPlus :: Bool
testVecPlus = vecPlus (2,3) (5,7) == (7,10)

testVecMult :: Bool
testVecMult = vecMult 10 (2,3) == (20,30)
