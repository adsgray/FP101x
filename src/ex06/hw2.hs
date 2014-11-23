import Prelude hiding (any)


l1 = [1,3,5,7,9,10]
l2 = [1,3,5,7,9]
-- use `even` for predicate

any :: (a -> Bool) -> [a] -> Bool

-- 0, flipped
-- any p = map p . or

-- 1
-- any p = or . map p

-- 2 should work, yep
-- any p xs = length (filter p xs) > 0

-- 3 should work?
-- any p = not . null . dropWhile (not . p)

-- 4, if any pass, null will be false? isn't this 'none'?
-- any p = null . filter p

-- 5 should work
-- any p xs = not (all (\ x -> not (p x)) xs)

-- 6 should work? yep
-- any p xs = foldr (\ x acc -> (p x) || acc) False xs

-- 7 True should be False, this will always return True?
any p xs = foldr (||) True (map p xs)
