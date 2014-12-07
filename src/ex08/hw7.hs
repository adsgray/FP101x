
mapM' :: Monad m => (a -> m b) -> [a] -> m [b]

-- sequence' :: Monad m => [m a] -> m [a]
-- sequence' [] = return []
-- sequence' (m:ms)
    -- = do a <- m
         -- as <- sequence' ms
         -- return (a:as)


x = [1,2,3,4,5]

func :: a -> [a]
func a = [a]


-- 0
--mapM' f as = sequence' (map f as)

-- 1
-- mapM' f [] = return []
-- mapM' f (a:as)
    -- = f a >>= \ b -> mapM' f as >>= \ bs -> return (b:bs)

-- 2
-- mapM' f as = sequence_ (map f as)

-- 3
-- mapM' f [] = return []
-- mapM' f (a:as)
    -- = f a >> \ b -> mapM' f as >> \ bs -> return (b:bs)


-- 4
-- mapM' f [] = return []
-- mapM' f (a:as) =
    -- do
        -- f a -> b
        -- mapM' f as -> bs
        -- return (b:bs)


-- 5
-- mapM' f [] = return []
-- mapM' f (a:as)
    -- = do b <- f a
         -- bs <- mapM' f as
         -- return (b:bs)

-- 6
mapM' f [] = return []
mapM' f (a:as)
    = f a >>=
        \ b ->
          do bs <- mapM' f as
             return (b:bs)

-- 7
-- mapM' f [] = return []
-- mapM' f (a:as)
    -- = f a >>=
        -- \ b ->
          -- do bs <- mapM' f as
             -- return (bs ++ [b])
