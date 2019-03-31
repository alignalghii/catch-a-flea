module ListXTest where

import ListX

testListXModule :: Bool
testListXModule = testIsPrefixOf && testIsSubsetOf && testDescartes && testSamePlaces

testIsPrefixOf :: Bool
testIsPrefixOf = isPrefixOf ([]::[Integer]) ([]::[Integer]) && isPrefixOf [] [12] && not (isPrefixOf [12] []) && isPrefixOf [12] [12] && not(isPrefixOf [12] [13]) && isPrefixOf [12] [12, 13] && not(isPrefixOf [12] [13, 12]) && not(isPrefixOf [12, 13] [12]) && isPrefixOf [12, 13] [12,13] && not(isPrefixOf [13,12] [12,13])

testIsSubsetOf :: Bool
testIsSubsetOf = isSubsetOf ([]::[Integer]) ([]::[Integer]) && isSubsetOf [] [12] && not (isSubsetOf [12] []) && isSubsetOf [12] [12] && not(isSubsetOf [12] [13]) && isSubsetOf [12] [12, 13] && isSubsetOf [12] [13, 12] && not(isSubsetOf [12, 13] [12]) && isSubsetOf [12, 13] [12,13] && isSubsetOf [13,12] [12,13]

testDescartes :: Bool
testDescartes = descartes "abc" [0..9] == [('a',0),('a',1),('a',2),('a',3),('a',4),('a',5),('a',6),('a',7),('a',8),('a',9),('b',0),('b',1),('b',2),('b',3),('b',4),('b',5),('b',6),('b',7),('b',8),('b',9),('c',0),('c',1),('c',2),('c',3),('c',4),('c',5),('c',6),('c',7),('c',8),('c',9)]

testSamePlaces :: Bool
testSamePlaces = samePlaces "abcdefg" "ABCDEFG" == [] && samePlaces "abcdefg" "abcdefg" == [0..6] && samePlaces "abcdefg" "ABcDEfG" == [2, 5] && samePlaces "abcdefghijk" "ABcDEfG" == [2, 5] && samePlaces "abcdefghijk" "ABcDEfGHIJK" == [2, 5]
