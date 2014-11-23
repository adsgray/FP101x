-- import Prelude hiding (filter)


l1 = [1,2,3,4,5,6,7,8,9,10]

filter0 p = foldl (\ xs x -> if p x then x:xs else xs) []

filter1 p = foldr (\ x xs -> if p x then x : xs else xs) []

filter2 p = foldr (\ x xs -> if p x then xs ++ [x] else xs) []

-- x and xs are reversed
-- filter3 p = foldl (\ x xs -> if p x then xs ++ [x] else xs) []
