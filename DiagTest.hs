{-# LANGUAGE NPlusKPatterns #-}
module DiagTest where

import Diag
import ListX

testDiagModule :: Bool
testDiagModule = testNextPoint && testDiag

testNextPoint :: Bool
testNextPoint = nextPoint (0,0) == (0,1) && nextPoint (5,7) == (6,6) && nextPoint (4,0) == (0,5) && nextPoint (0,5) == (1,4)

testDiag :: Bool
testDiag = isPrefixOf [(0,0), (0,1), (1,0), (0,2), (1,1), (2,0), (0,3), (1,2), (2,1), (3,0)] diag
