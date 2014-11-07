
l = [1,2,3,4,5,6,7]

funct :: Int -> [a] -> [a]
funct x xs = take (x + 1) xs ++ drop x xs

-- funct 3 l
-- take 4 xs ++ drop 3 xs
-- [1,2,3,4] ++ [4,5,6,7]
-- [1,2,3,4,4,5,6,7] ?
