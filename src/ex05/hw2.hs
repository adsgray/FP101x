-- drop

dr :: Int -> [a] -> [a]
dr 0 xs = xs
dr n [] = []
dr n (_ : xs) = drop (n - 1) xs

-- evaluate drop 3 [1,2,3,4,5]
-- drop 2 [2,3,4,5]
-- drop 1 [3,4,5]
-- drop 0 [4,5]
-- [4,5]
