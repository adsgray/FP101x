

unfold :: (b -> Bool) -> (b->a) -> (b->b) -> b -> [a]

unfold p h t x
    | p x = []
    | otherwise = h x : unfold p h t (t x)

l1 = [1,2,3,4]

map0 f = unfold null (f) tail
map1 f = unfold null (f (head)) tail
-- it's one of these ones:
map2 f = unfold null (f . head) tail
-- map3 f = unfold empty (f . head) tail
