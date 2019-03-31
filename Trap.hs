module Trap (trap, safeTrap, isCatchable) where

import Cover (cover)
import ListX (samePlaces)
import Point (Point, vecMult)
import Nat (nats)

trap :: [Point] -> [Integer]
trap = samePlaces path

safeTrap :: [Point] -> Maybe Integer
safeTrap aFlea = case trap aFlea of
    (i1 : i2 : _) -> Just i2
    [i]           -> Nothing
    []            -> Nothing

isCatchable :: [Point] -> Bool
isCatchable aFlea = safeTrap aFlea > Just 0 && any (> 0) (trap aFlea) -- neither of them can detect a fake flea, infinite loop

path :: [Point]
path = zipWith vecMult nats cover
