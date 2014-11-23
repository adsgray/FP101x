import Prelude hiding (takeWhile)

l1 = [1,3,5,7,10] -- [1,3,5,7]
l2 = [1,3,4,7,9] -- [1,3]
l3 = [2,1,3,5] -- []

-- use even as predicate

takeWhile0 :: (a -> Bool) -> [a] -> [a]
takeWhile1 :: (a -> Bool) -> [a] -> [a]
takeWhile2 :: (a -> Bool) -> [a] -> [a]

-- 0 this looks more like filter
takeWhile0 _ [] = []
takeWhile0 p (x:xs)
    | p x = x : takeWhile0 p xs
    | otherwise = takeWhile0 p xs

-- 1 this looks right
takeWhile1 _ [] = []
takeWhile1 p (x:xs)
    | p x = x : takeWhile1 p xs
    | otherwise = []


-- 2 this removes x
takeWhile2 _ [] = []
takeWhile2 p (x:xs)
    | p x = takeWhile2 p xs
    | otherwise = []

-- 3
takeWhile3 p = foldl (\ acc x -> if p x then x : acc else acc) []
