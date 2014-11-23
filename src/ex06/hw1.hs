import Prelude hiding (all)

-- returns true if all elements of list satisfy predicate
all :: (a -> Bool) -> [a] -> Bool

l1 = [2,4,6,8,10,12]
l2 = [1,4,6,8,10,12]
-- use `even` for predicate

-- 0
-- looks good to me
-- all p xs = and (map p xs)

-- 1, not right, since xs is not necessarily [Bool]
-- all p xs = map p (and xs)

-- 2 yep
-- all p = and . map p

-- 3 should work, yep
-- all p = not . any (not . p)

-- 4 same problems as 1?
-- all p = map p . and

-- 5 should work
-- all p xs = foldl (&&) True (map p xs)

-- 6 wat
-- all p xs = foldr (&&) False (map p xs)

-- 7 should work?
all p = foldr (&&) True . map p
