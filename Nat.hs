module Nat where

type Nat = Integer

nats :: [Nat]
nats = iterate succ 0 -- [0..]

digits :: [Nat]
digits = [0..9]
