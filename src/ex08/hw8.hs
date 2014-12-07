filterM' :: Monad m => (a -> m Bool) -> [a] -> m [a]

x = [1,2,3,4,5,6]

evenM :: Integral a => a -> [Bool]
evenM n = [even n]

evenJ :: Integral a => a -> Maybe a
evenJ n = if even n then Just n else Nothing

-- 0
--filterM' _ [] = return []
--filterM' p (x:xs)
    -- = do flag <- p x
         --ys <- filterM' p xs
         --return (x:ys)

-- 1
-- filterM' _ [] = return []
-- filterM' p (x:xs)
    -- = do flag <- p x
         -- ys <- filterM' p xs
         -- if flag then return (x:ys) else return ys


-- 2
-- filterM' _ [] = return []
-- filterM' p (x:xs)
    -- = do ys <- filterM' p xs
         -- if p x then return (x:ys) else return ys


-- 3
filterM' _ [] = return []
filterM' p (x:xs)
    = do flag <- p x
         ys <- filterM' p xs
         if flag then return ys else return (x:ys)

