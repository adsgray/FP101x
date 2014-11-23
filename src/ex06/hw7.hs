
dec2int0 :: [Integer] -> Integer
dec2int1 :: [Integer] -> Integer
dec2int2 :: [Integer] -> Integer
dec2int3 :: [Integer] -> Integer

l1 = [2,3,4,5]

dec2int0 = foldr (\ x y -> 10 * x + y) 0
dec2int1 = foldl (\ x y -> x + 10 * y) 0
dec2int2 = foldl (\ x y -> 10 * x + y) 0
dec2int3 = foldr (\ x y -> x + 10 * y) 0
