module Point where

type Point = (Integer, Integer)

orig :: Point
orig = (0,0)

vecPlus :: (Num x, Num y) => (x, y) -> (x, y) -> (x, y)
vecPlus (x,y) (dx, dy) = (x+dx, y+dy)

vecMult :: (Num a, Num a, Num a) => a -> (a, a) -> (a, a)
vecMult a (x,y) = (a*x, a*y)
