module ListX where

import Nat (nats)

isPrefixOf ::  Eq a => [a] -> [a] -> Bool
isPrefixOf []    _  = True
isPrefixOf (_:_) [] = False
isPrefixOf (a:as) (b:bs) = a == b && isPrefixOf as bs

isSubsetOf :: Eq a => [a] -> [a] -> Bool
isSubsetOf as bs = all (flip elem bs) as

descartes :: [a] -> [b] -> [(a, b)]
descartes as bs = as >>= flip map bs . (,)

samePlaces :: Eq a => [a] -> [a] -> [Integer]
samePlaces as bs = let flags = zipWith (==) as bs  
                   in map fst $ filter snd $ zip nats flags
