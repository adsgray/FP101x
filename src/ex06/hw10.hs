-- import Prelude hiding (uncurry)


uncurry0 :: (a -> b -> c) -> (a,b) -> c
uncurry1 :: (a -> b -> c) -> (a,b) -> c
uncurry2 :: (a -> b -> c) -> (a,b) -> c
uncurry3 :: (a -> b -> c) -> (a,b) -> c

uncurry0 f = \ (x,y) -> f x y -- yep?
uncurry1 f = \ x y -> f (x,y) -- nope
uncurry2 f = \ (x,y) -> f -- wat
uncurry3 f = \ x y -> f -- doesn't take a pair
