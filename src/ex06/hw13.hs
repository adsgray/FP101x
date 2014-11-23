

unfold :: (b -> Bool) -> (b->a) -> (b->b) -> b -> [a]

unfold p h t x
    | p x = []
    | otherwise = h x : unfold p h t (t x)


-- yep:
iterate0 f = unfold (const False) id f
iterate1 f = unfold (const False) f f
iterate2 f = unfold (const True) id f
iterate3 f = unfold (const True) f f


