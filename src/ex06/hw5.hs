-- import Prelude hiding (map)


l1 = [1,2,3,4]

map0 f = foldr (\ x xs -> xs ++ [f x]) []

map1 f = foldr (\ x xs -> f x ++ xs) []

map2 f = foldl (\ xs x -> f x : xs) []

map3 f = foldl (\ xs x -> xs ++ [f x]) []
