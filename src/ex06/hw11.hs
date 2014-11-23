

unfold :: (b -> Bool) -> (b->a) -> (b->b) -> b -> [a]

unfold p h t x
    | p x = []
    | otherwise = h x : unfold p h t (t x)



chop8 :: [Char] -> [[Char]]
chop8 [] = []
chop8 bits = take 8 bits : chop8 (drop 8 bits)


-- chop80 = unfold [] (drop 8) (take 8) -- wat [] is not a predicate
chop81 = unfold null (take 8) (drop 8)
chop82 = unfold null (drop 8) (take 8)
chop83 = unfold (const False) (take 8) (drop 8)
