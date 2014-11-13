

sel :: [a] -> Int -> a

l = "abcdefg"

-- 0:  not zero based
-- (x : _) `sel` 1 = x
-- (_ : xs) `sel` n = xs `sel` (n - 1)

-- 1: that last case is bad
-- (x : _) `sel` 0 = x
-- (_ : xs) `sel` n = xs `sel` (n - 1)
-- [] `sel` n = 0

-- 2: maybe
(x : _) `sel` 0 = x
(_ : xs) `sel` n = xs `sel` (n - 1)


