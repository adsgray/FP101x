-- init

i :: [a] -> [a]
i [_] = [] -- init of a single element list is empty?
i (x:xs) = x : init xs

-- evaluate i [1,2,3]
-- 1 : i [2,3]
-- 1 : 2 : i [3]
-- 1 : 2 : []
-- 1 : 2
