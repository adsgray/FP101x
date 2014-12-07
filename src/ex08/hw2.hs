
-- from exercise 1
putStr' :: String -> IO ()
putStr' [] = return ()
putStr' (x:xs) = putChar x >> putStr' xs


pln :: String -> IO ()
--0 yep
-- pln [] = putChar '\n'
-- pln xs = putStr' xs >> pln ""
--1 yep
--pln [] = putChar '\n'
--pln xs = putStr' xs >> putChar '\n'
--2 yep
--pln [] = putChar '\n'
--pln xs = putStr' xs >>= \x -> putChar '\n'
--3 nope
--pln [] = putChar '\n'
--pln xs = putStr' xs >> \x -> putChar '\n'
--4 yep
--pln [] = putChar '\n'
--pln xs = putStr' xs >> putStr' "\n"
--5 surely infinite recursion
--pln [] = putChar '\n'
--pln xs = putStr' xs >> pln "\n"
--6 wat
--pln [] = putChar '\n'
--pln xs = pln xs >> putStr' "\n"
--7 bad types
pln [] = putChar "\n"
pln xs = putStr' xs >> putChar "\n"
