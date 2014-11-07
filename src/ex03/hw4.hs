-- remove

l = [1,2,3,4]

r1 n xs = take n xs ++ drop n xs
r2 n xs = drop n xs ++ take n xs
r3 n xs = take (n + 1) xs ++ drop n xs
r4 n xs = take n xs ++ drop (n + 1) xs
