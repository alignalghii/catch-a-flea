module Test where

import NatTest
import ListXTest
import PointTest
import FleaTest
import DiagTest
import CoverTest
import TrapTest

test :: Bool
test = testNatModule && testListXModule && testPointModule && testFleaModule && testDiagModule && testCoverModule && testTrapModule
