sequence' :: Monad m => [m a] -> m [a]

x = [[1,2,3],[2,3],[3,4,5]]
y = [Just 1, Just 2, Just 3]

-- 0
sequence0' [] = return []
sequence0' (m:ms)
    = m >>=
        \ a ->
          do as <- sequence0' ms
             return (a:as)


-- 1
-- sequence1' ms = foldr func (return ()) ms
    -- where
        -- func :: (Monad m) => m a -> m [a] -> m [a]
        -- func m acc
            -- = do x <- m
                 -- xs <- acc
                 -- return (x: xs)

-- 2
--sequence2' ms = foldr func (return []) ms
    --where
        --func :: (Monad m) => m a -> m[a] -> m[a]
        --func m acc = m : acc

-- 3
-- sequence3' [] = return []
-- sequence3' (m:ms) = return (a:as)
    -- where
        -- a <- m
        -- as <- sequence3' ms

-- 4
sequence4' ms = foldr func (return []) ms
    where
        func :: (Monad m) => m a -> m[a] -> m[a]
        func m acc
            = do x <- m
                 xs <- acc
                 return (x:xs)

-- 5
-- sequence' [] = return []
-- sequence' (m:ms)
    -- = m >>
        -- \ a ->
          -- do as <- sequence' ms
             -- return (a:as)


-- 6
-- sequence' [] = return []
-- sequence' (m:ms) = m >>= \a ->
    -- as <- sequence' ms
    -- return (a:as)

-- 7
sequence' [] = return []
sequence' (m:ms)
    = do a <- m
         as <- sequence' ms
         return (a:as)

