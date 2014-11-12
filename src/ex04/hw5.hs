
-- redefine positions
-- using find


find :: (Eq a) => a -> [(a,b)] -> [b]
find k t = [v | (k', v) <- t, k == k']

-- positions :: (Eq a) => a -> [a] -> [Int]

-- this actually looks good to me
p1 x xs = find x (zip xs [0..n])
    where n = length xs - 1

-- this is mis-typed, second arg needs to be a list of :t x
p2 x xs = find x xs

-- wat, adding numbers to xs ??
-- p3 x xs = find x (zipWith (+) xs [0 .. n])
    --where n = length xs - 1

-- [0 .. x] is wrong
p4 x xs = find n (zip xs [0 .. x])
    where n = length xs - 1

