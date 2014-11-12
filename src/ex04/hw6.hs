-- The scalar product of two lists of integers xs and ys of length n is given
-- by the sum of the products of corresponding integers:
--
-- sum ( (xs !! i) * (ys !! i) ) for i = 0 to n-1
-- Choose the correct definition of scalarproduct :: [ Int ] -> [ Int ] -> Int
-- that returns the scalar product of two lists.)
-- scalarproduct [1, 2, 3] [4, 5, 6]
-- 32

-- hmmm, looks OK
-- but wait, waay too many combos of x*y
-- takes more than just pairs
sp1 xs ys = sum [x * y | x <- xs, y <- ys]

-- hmm, also looks OK?
-- yep, correct.
sp2 xs ys = sum [ x * y | (x,y) <- xs `zip` ys]

-- should be sum of products, this is product of sums
sp3 xs ys = product (zipWith (+) xs ys)

--  wat?
-- sp4 xs ys = sum (product [(x,y) | x<-xs, y<-ys])
