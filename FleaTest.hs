module FleaTest where

import Flea
import ListX

testFleaModule :: Bool
testFleaModule = testFlea

testFlea :: Bool
testFlea = isPrefixOf [(0,0), (2,3), (4,6), (6,9)] (jumpsOf (2,3)) && isPrefixOf [(0,0), (5,7), (10,14), (15,21)] (jumpsOf (5,7))
