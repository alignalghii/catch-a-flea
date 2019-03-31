module NatTest where

import Nat
import ListX

type Nat = Integer

testNatModule :: Bool
testNatModule = testNats && testDigits

testNats, testDigits :: Bool
testNats = isPrefixOf [0..99] nats
testDigits = digits == [0..9]
