-- import Prelude hiding (dropWhile)

l1 = [1,3,5,7,10] -- [10]
l2 = [1,3,4,7,9] -- []
l3 = [2,1,3,5] -- [2,1,3,5]

dropWhile0 :: (a -> Bool) -> [a] -> [a]
dropWhile1 :: (a -> Bool) -> [a] -> [a]
dropWhile2 :: (a -> Bool) -> [a] -> [a]
dropWhile3 :: (a -> Bool) -> [a] -> [a]

dropWhile0 _ [] = []
dropWhile0 p (x:xs)
    | p x = dropWhile0 p xs
    | otherwise = x : xs

dropWhile1 _ [] = []
dropWhile1 p (x:xs)
    | p x = dropWhile1 p xs
    | otherwise = xs

dropWhile2 p = foldr (\ x acc -> if p x then acc else x : acc) []

dropWhile3 p = foldl add []
    where add [] x = if p x then [] else [x]
          add acc x = x : acc
