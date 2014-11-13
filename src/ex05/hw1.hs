
-- length of a list

len :: [a] -> Int
len [] = 0
len (_ : xs) = 1 + length xs

-- len [1, 2, 3]
