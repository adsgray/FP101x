-- zip
-- combine two lists into a single list
--

-- stops as soon as one of the lists is exhausted
-- resulting list is the length of the shortest input list
zip' :: [a] -> [b] -> [(a,b)]


pairs :: [a] -> [(a,a)]
pairs xs = zip xs (tail xs)
-- eg. [1,2,3,4] 
-- zip [1,2,3,4] [2,3,4]
-- [(1,2), (2,3), (3,4)]

sorted :: Ord a => [a] -> Bool
sorted xs =
    and [ x <= y | (x,y) <- pairs xs ]

lowers :: String -> Int
lowers xs =
    length [ x | x <- xs, isLower x ]

