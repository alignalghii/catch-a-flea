module TrapTest where

import Trap (trap, safeTrap)
import Flea (jumpsOf)
import Point (orig)
import Nat (nats)

testTrapModule :: Bool
testTrapModule = testTrap && testSafeTrap

testTrap :: Bool
testTrap = let samples = [(2,3), (5,7), (10,100)]
               fleas = map jumpsOf samples
               testOne flea = any (> 0) (trap flea)
               flags = map testOne fleas
           in and flags

testSafeTrap :: Bool
testSafeTrap = let samples = [(2,3), (5,7), (10,100)]
                   fleas = map jumpsOf samples
                   fakeFlea = [(a,a+1) | a <- nats] -- no way to test, `safeTrap` is no better than `trap`
                   fakeFlea0 = orig : fakeFlea      -- no way to test, `safeTrap` is no better than `trap`
                   testOne flea = safeTrap flea > Just 0
                   flags = map testOne fleas
               in and flags
