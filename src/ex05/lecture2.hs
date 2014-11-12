-- recursive functions part 2

-- quicksort
--
-- replicate
rep :: Int -> a -> [a]
rep 0 a = []
rep n a = a : rep (n - 1) a

-- select nth element of the list
sel :: [a] -> Int -> a
sel (x:xs) 0 = x
sel (x:xs) n = sel xs (n - 1)

-- decide if a value is an element of a list
-- elem
el :: Eq a => a -> [a] -> Bool
el a [] = False
el a (x:xs) = (a == x) || el a xs
