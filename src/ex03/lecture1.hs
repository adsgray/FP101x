-- defining functions, part 1


-- conditional expressions
abs' :: Int -> Int
abs' n = if n >= 0 then n else -n

-- guarded equations
-- whitespace is just formatting
-- and I think 'otherwise' is just True
-- this is idiomatic, you don't use if-then-else
-- abs'' :: Int-> Int
abs'' n | n >= 0    = n
        | otherwise = -n

-- pattern matching

not' :: Bool -> Bool
not' False = True
not' True = False

-- most optimal def/n of &&
-- patterns matched in order
-- left to right, top to bottom
(&&) :: Bool -> Bool -> Bool
True && b = b
False && _ = False
