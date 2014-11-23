-- import Prelude hiding (curry)

curry0 :: ((a,b) -> c) -> a -> b -> c
curry1 :: ((a,b) -> c) -> a -> b -> c
curry2 :: ((a,b) -> c) -> a -> b -> c
curry3 :: ((a,b) -> c) -> a -> b -> c

curry0 f = \ x y -> f x,y
curry1 f = \ x y -> f
curry2 f = \ x y -> f (x,y) -- I think it's this one, it's the only one that calls f correctly?
curry3 f = \ (x,y) -> f x y
