
sequence_':: Monad m => [m a] -> m ()

x = [[1,2,3],[2,3],[3,4,5]]
y = [Just 1, Just 2, Just 3]

-- 0
-- sequence_' [] = return []
-- sequence_' (m:ms) = m >> \ _ -> sequence_' ms

-- 1
-- sequence_' [] = return ()
-- sequence_' (m:ms) = (foldl (>>) m ms) >> return ()

-- 2
-- sequence_' ms = foldl (>>) (return ()) ms

-- 3
-- sequence_' [] = return ()
-- sequence_' (m:ms) = m >> sequence_' ms

--4
-- sequence_' [] = return ()
-- sequence_' (m:ms) = m >>= \ _ -> sequence_' ms

--5
-- sequence_' ms = foldr (>>=) (return ()) ms



--6
-- sequence_' ms = foldr (>>) (return ()) ms



--7
sequence_' ms = foldr (>>) (return []) ms




