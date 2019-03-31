module ListX where

import Nat (Nat, nats)

isPrefixOf ::  Eq a => [a] -> [a] -> Bool
isPrefixOf []    _  = True
isPrefixOf (_:_) [] = False
isPrefixOf (a:as) (b:bs) = a == b && isPrefixOf as bs

isSubsetOf :: Eq a => [a] -> [a] -> Bool
isSubsetOf as bs = all (flip elem bs) as

descartes :: [a] -> [b] -> [(a, b)]
descartes as bs = as >>= flip map bs . (,)

type Index = Nat

samePlaces :: Eq a => [a] -> [a] -> [Index]
samePlaces as bs = let flags = zipWith (==) as bs  
                   in map fst $ filter snd $ zip nats flags
