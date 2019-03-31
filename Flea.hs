module Flea where

import Point

type Flea = [Point]

jumpsOf :: Point -> [Point]
jumpsOf vec = iterate (vecPlus vec) orig
