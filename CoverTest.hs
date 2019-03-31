module CoverTest where

import Cover
import ListX
import Nat

testCoverModule :: Bool
testCoverModule = testCover

testCover :: Bool
testCover = elem (2,3) cover && elem (22,36) cover && elem (258,371) cover && isSubsetOf (descartes digits digits) cover
