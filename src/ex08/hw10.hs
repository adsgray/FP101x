
foldRightM :: Monad m => (a -> b -> m b) -> b -> [a] -> m b


-- foldr f z []     = z 
-- foldr f z (x:xs) = f x (foldr f z xs) 

foldRightM f a [] = return a
foldRightM f a (b:bs) = 
    do res <- foldRightM f a bs
       f b res

putStr' :: String -> IO ()
putStr' [] = return ()
putStr' (x:xs) = putChar x >> putStr' xs


pln [] = putChar '\n'
pln xs = putStr' xs >> pln ""

x = foldRightM (\a b -> putChar a >> return (a : b)) [] (show [1,3..10]) >>= \r -> pln r
