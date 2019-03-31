module Flea where

import Point

flea :: Point -> [Point]
flea vec = iterate (vecPlus vec) orig
