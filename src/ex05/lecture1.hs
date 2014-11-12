-- recursive functions
-- bananas!


-- tail call elimenation
--


-- factorial function
fact :: Int -> Int
fact n = product [1..n]

-- stack of bananas:
fact2 :: Int -> Int
fact2 0 = 1
fact2 n = n * fact2 (n - 1)

-- also, fact2 (-1) "diverges" because base case never reached
--

-- reverse
-- zip
-- drop
-- append two lists


appendlist :: [a] -> [a] -> [a]
[] ++ ys = ys
(x:xs) `appendlist` ys = x : (xs `appendlist` ys)



