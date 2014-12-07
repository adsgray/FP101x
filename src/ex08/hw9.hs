
-- that takes an accumulation function a -> b -> m a, and a seed of type a and
-- left folds a finite, non-partial list of non-bottom elements of type b into
-- a single result of type m a
--

foldLeftM :: Monad m => (a -> b -> m a) -> a -> [b] -> m a

foldLeftM f a [] = return a
foldLeftM f a (b:bs) = 
    do res <- f a b
       foldLeftM f res bs
    
x = foldLeftM (\a b -> putChar b >> return (b : a ++ [b])) [] "haskell" >>= \r -> print r
