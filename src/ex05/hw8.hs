-- elem

el :: Eq a => a -> [a] -> Bool

l = "abcdefg"

-- 0: looks OK
el _ [] = False
el x (y : ys)
    | x == y = True
    | otherwise = el x ys
