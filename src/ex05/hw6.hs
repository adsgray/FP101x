

rep :: Int -> a -> [a]


-- 0: doesn't return a list for base case
-- rep 1 x = x
-- rep n x = x : rep (n - 1) x


-- 1:
-- rep 0 _ = []
-- rep n x = rep (n - 1) x : x

-- 2:
-- rep 1 _ = []
-- rep n x = rep ( n - 1) x ++ [x]

-- 3: bingo
rep 0 _ = []
rep n x = x : rep (n - 1) x
