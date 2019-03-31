module Trap (trap, safeTrap, isCatchable) where

import Cover (cover)
import Flea (Flea)
import ListX (samePlaces)
import Point (Point, vecMult)
import Nat (nats)

trap :: Flea -> [Integer]
trap = samePlaces path

safeTrap :: Flea -> Maybe Integer
safeTrap flea = case trap flea of
    (i1 : i2 : _) -> Just i2
    [i]           -> Nothing
    []            -> Nothing

isCatchable :: Flea -> Bool
isCatchable flea = safeTrap flea > Just 0 && any (> 0) (trap flea) -- neither of them can detect a fake flea, infinite loop

path :: [Point]
path = zipWith vecMult nats cover
