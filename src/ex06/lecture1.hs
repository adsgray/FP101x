-- higher-order functions


-- takes a function as its first arg.
twice :: (a -> a) -> a -> a
twice f x = f (f x)


-- foldr
-- coming from the right
-- homomorphism over list
-- preserves structure
-- replaces [] with v and : (cons) with `op`
f [] = v
f (x:xs) = x `op` f xs

-- so:
f [1,2,3,4]
1 `op` f [2,3,4]
1 `op` (2 `op` f [3,4])
1 `op` (2 `op` (3 `op` f [4]))
1 `op` (2 `op` (3 `op` (4 `op` f [])))
1 `op` (2 `op` (3 `op` (4 `op` v)))


-- what about foldl

-- fl [1,2,3,4]


