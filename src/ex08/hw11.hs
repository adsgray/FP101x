
liftM :: Monad m => (a -> b) -> m a -> m b

x = [1,2,3,4]
func x = 2 * x

-- 0 
liftM f m
    = do x <- m
         return (f x)

-- 1
-- liftM f m = m >>= \ a -> f a

-- 2 yes
-- liftM f m = m >>= \a -> return (f a)

-- 3
-- liftM f m = return (f m)

-- 4
-- liftM f m = m >>= \ a -> m >>= \ b -> return (f a)

-- 5
-- liftM f m = m >>= \ a -> m >>= \ b -> return (f b)

-- 6
-- liftM f m = mapM f [m]

-- 7
-- liftM f m = m >> \ a -> return (f a)

