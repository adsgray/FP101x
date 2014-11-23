
-- sum is [a] -> a, others are [a] -> [a]
sumsqreven = compose [sum, map (^ 2), filter even]

compose :: [a -> a] -> (a -> a)
compose = foldr (.) id
