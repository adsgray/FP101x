

data Tree = Leaf Integer
          | Node Tree Tree
          deriving Show

balance :: [Integer] -> Tree

l0 = [1]
l1 = [1,2]
l2 = [1,2,3,4,5,6]
l3 = [1,2,3,4,5,6,7,8,9]

-- 0 seems ok?
-- halve xs = splitAt (length xs `div` 2) xs
-- balance [x] = Leaf x
-- balance xs = Node (balance ys) (balance zs)
    -- where (ys, zs) = halve xs


--                Node 
-- (Node 
    -- (Node (Leaf 1) (Leaf 2)) 
    -- (Node (Leaf 3) (Leaf 4))) 
-- (Node 
    -- (Node (Leaf 5) (Leaf 6)) 
    -- (Node (Leaf 7) (Node (Leaf 8) (Leaf 9))))

-- 1 can't do / on ints
--
-- 2 wrong type
