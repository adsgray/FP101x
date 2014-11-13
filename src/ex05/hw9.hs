
-- merge
-- Choose the correct definition for the function merge :: Ord a => [a] -> [a]
-- -> [a] that merges two sorted lists in ascending order to give a single
-- sorted list in ascending order. For example:
--
-- merge [2,5,6] [1,3,4]
-- [1,2,3,4,5,6]

m :: Ord a => [a] -> [a] -> [a]

l1 = [2,5,6]
l2 = [1,3,4]

-- 0: hmm doesn't this throw y or x away?
-- m [] ys = ys
-- m xs [] = xs
-- m (x : xs) (y: ys)
    -- = if x <= y then x : m xs ys else y : m xs ys

-- 1: ditto?
-- m [] ys = ys
-- m xs [] = xs
-- m (x : xs) (y: ys)
    -- = if x <= y then y : m xs (y : ys) else x : m (x:xs) ys


-- 2: better, but should be reverse order?
-- m [] ys = ys
-- m xs [] = xs
-- m (x : xs) (y: ys)
    -- = if x <= y then y : m (x:xs) ys else x : m xs (y:ys)

-- 3: looks good
m [] ys = ys
m xs [] = xs
m (x : xs) (y: ys)
    = if x <= y then x : m xs (y : ys) else y : m (x:xs) ys

