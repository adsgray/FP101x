

fibs :: [Integer]

-- 0
-- fibs = 1 : [x+y|(x,y) <- zip fibs (tail fibs)]

-- 1
-- fibs = 0 : 1 : zipWith (*) fibs (tail fibs)

-- 2 yep
fibs = 0 : 1 : [x + y | (x,y) <- zip fibs (tail fibs)]

-- 3
-- fibs = 1 : 1 : [x+y|(x,y) <- zip (tail fibs) fibs]


fib :: Int -> Integer
-- fib n = last (take n fibs)
-- fib n = head (drop (n - 1) fibs)
fib n = fibs !! n

largeFib :: Integer

-- yep?
-- largeFib = head (dropWhile (<= 1000) fibs)


