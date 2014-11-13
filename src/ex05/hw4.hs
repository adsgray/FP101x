
-- and as applied to list
--


-- 0: looks good?
-- a [] = True
-- a (b:bs) = b && a bs

-- 1: also looks good
-- a [] = True
-- a (b:bs)
    -- | b = a bs
    -- | otherwise = False

-- 2: nope
-- a [] = False
-- a (b:bs) = b && a bs

-- 3: wut
-- a [] = False
-- a (b:bs) = b || a bs
--


-- 4: yep
-- a [] = True
-- a (b:bs)
    -- | b == False = False
    -- | otherwise = a bs

-- 5: wut
-- a [] = True
-- a (b : bs) = b || a bs


-- 6: yep?
-- a [] = True
-- a (b : bs) = a bs && b
--
--


-- 7: nope, head=True always returns True?
a [] = True
a (b:bs)
    | b = b
    | otherwise = a bs
