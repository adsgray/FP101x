-- types and classes
--

-- associate to the left. For application
-- the parentheses associate to the left, for the function arrow
-- they associate to the right and that matches up perfectly,

add' :: Int -> (Int -> Int)
add' x y = x + y

add'' :: Int -> Int -> Int
add'' x y = x + y

add_not_curried :: (Int,Int) -> Int
add_not_curried (x, y) = x + y
