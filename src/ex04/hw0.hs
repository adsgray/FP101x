
-- error, trying to sum lists
-- sum1 = sum [[x * x] | x <- [1 .. 100]]

-- yep
sum2 = sum [ x^2 | x <- [1 .. 100]]

-- wat
sum3 = sum [ const 2 x | x <- [1 .. 100]]

-- almost
sum4 = foldl (+) (1) [ x ^ 2 | x <- [1..100]]
sum5 = foldl (+) (0) [ x ^ 2 | x <- [1..100]]
