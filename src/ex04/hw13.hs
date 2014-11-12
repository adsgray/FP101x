
-- Choose the correct definition for the function divisors :: Int -> [Int] that
-- returns the divisors of a natural number.
--
-- For example:
-- 
-- divisors 15 = [1,3,5,15]

-- The function divides :: Int -> Int -> Bool decides if one integer is
-- divisible by another. (Note: You need to implement this function yourself.)
--
--OK:

divides :: Int -> Int -> Bool
divides d x = (d `mod` x) == 0

-- yep
dvs1 x = [ d | d <- [1 .. x], x `divides` d ]

-- nope
dvs2 x = [d | d <- [1..x], d `divides` x]

-- maybe, if you don't want to include 1
dvs3 x = [d | d <- [2 .. x], x `divides` d]

-- dvs4 x = [d | d <- [1 .. x], x divides d ]


