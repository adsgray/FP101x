
data Tree = Leaf Integer
          | Node Tree Integer Tree
          deriving Show

occ :: Integer -> Tree -> Bool


l2 = Leaf 2
l4 = Leaf 4
l8 = Leaf 8
l10 = Leaf 10

t1 = Node (Node l2 3 l4) 5 (Node l8 9 l10)


-- 0 yep
-- 1 nope
-- 2 doesn't type check
-- 3 nope
-- 4 yep
-- 5 nope
-- 6 doesn't type
-- 7 doesn't type
occ m n = m == n
occ m (Node l n r)
    | m == n = True
    | m > n = occ m l
    | otherwise = occ m r
