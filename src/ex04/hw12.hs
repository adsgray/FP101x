
-- Choose the correct definition of the function riffle :: [a] -> [a] -> [a]
-- that takes two lists of the same length and interleaves their elements in
-- turn about order.
--
-- For example:
--
-- riffle [1,2,3] [4,5,6] = [1,4,2,5,3,6]


-- too many combos, correct one will use zip
r1 xs ys = concat [[x,y] | x <- xs, y <- ys]

-- looks good
r2 xs ys = concat [[x,y] | (x,y) <- xs `zip` ys]

-- wut
-- r3 xs ys = [ x,y | (x,y) <- xs `zip` ys]

r4 xs ys = [ x : [y] | x <- xs, y <- ys]
