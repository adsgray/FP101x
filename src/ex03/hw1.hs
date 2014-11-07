-- safetail

l = [1,2,3,4,5,6]

-- should be ok
st1 xs = if null xs then [] else tail xs

-- should be ok
st2 [] = []
st2 (_ : xs) = xs

-- should barf on empty list
-- yes... but is also wrong in non-empty case as takes tail of tail.
st3 (_ : xs)
    | null xs = []
    | otherwise = tail xs

-- ok
st4 xs
    | null xs = []
    | otherwise = tail xs

-- should barf as order matters
-- yep
st5 xs = tail xs
st5 [] = []

-- ok
st6 [] = []
st6 xs = tail xs

-- should barf on empty
-- yep
st7 [x] = [x]
st7 (_ : xs) = xs

-- ugly but should work
st8
    = \ xs ->
        case xs of
            [] -> []
            (_ : xs) -> xs
