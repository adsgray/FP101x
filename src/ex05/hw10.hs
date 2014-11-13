-- Choose the correct definition for the function msort :: Ord a => [a] -> [a]
-- that implements merge sort, in which the empty list and singleton lists are
-- already sorted, and any other list is sorted by merging together the two
-- lists that result from sorting the two halves of the list separately. The
-- solutions can use the function merge from the previous exercise and the
-- function halve that splits a list into two halves whose lengths differ by at
-- most one.

halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x : xs) (y: ys)
    = if x <= y then x : merge xs (y : ys) else y : merge (x:xs) ys

l = [1,4,3,5,2]
l2 = [5,4,3,2,1]


msort :: Ord a => [a] -> [a]

-- 0: never returns
-- msort [] = []
-- msort xs = merge (msort zs) (msort ys)
    -- where (ys, zs) = halve xs

-- 1: singleton list case added
-- seeeems to work
-- msort [] = []
-- msort [x] = [x]
-- msort xs = merge (msort ys) (msort zs)
    -- where (ys, zs) = halve xs

-- 2: doesn't use merge
-- msort [] = []
-- msort [x] = [x]
-- msort xs = msort ys ++ msort zs
    -- where (ys, zs) = halve xs

-- 3: doesn't use merge 
msort [] = []
msort [x] = [x]
msort xs = msort (msort ys ++ msort zs)
    where (ys, zs) = halve xs
