-- perfects

-- factors n
factors num = [n | n <- [1..num], num `mod` n == 0]

p1 n = [x | x <- [1..n], isPerfect x]
    where isPerfect num = sum (factors num) == num

p2 n = [x | x <- [1..n], isPerfect x]
    where isPerfect num = sum (init (factors num)) == num

-- p4 n = [x | x <- [1..n], isPerfect x]
    -- where isPerfect num = init (factors num) == num

