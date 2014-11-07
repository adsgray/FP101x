import Prelude hiding ((||))

-- 1
-- False || False = False
-- _ || _ = True

-- 2
-- False || b = b
-- True || _ = True

-- 3
-- should not be correct
-- b || c
    -- | b == c = True
    -- | otherwise = False

-- 4
-- b || c
    -- | b == c = b -- so works for same || same
    -- | otherwise = True -- and if they're not the same, one of the must be True

-- 5
-- should work
-- b || False = b
-- _ || True = True

-- 6
-- same as 4?
-- b || c
    -- | b == c = c
    -- | otherwise = True

-- 7
-- uh doesn't handle || False case?
-- b || True = b
-- _ || True = True

-- 8
-- obvs
False || False = False
False || True = True
True || False = True
True || True = True

f1 = False || False
t1 = True || True
t2 = True || False
t3 = False || True

