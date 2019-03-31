{-# LANGUAGE NPlusKPatterns #-}
module Diag where

import Point

nextPoint :: Point -> Point
nextPoint (i, 0  ) = (0  , i+1)
nextPoint (i, j+1) = (i+1, j  )

diag :: [Point]
diag = iterate nextPoint orig
