{-# LANGUAGE NPlusKPatterns #-}
import Data.List
import Data.Char
import Unsafe.Coerce

data Nat = Zero | Succ Nat deriving Show

nti :: Nat -> Integer
nti Zero = 0
nti (Succ n) = nti n + 1

itn :: Integer -> Nat

-- 0
itn 0 = Zero
itn (n+1) = Succ (itn n)

-- 1 WAT
-- itn 0 = Succ Zero
-- itn n = (Succ (itn n))

-- 2 nope
-- itn n
    -- = product [(unsafeCoerce c) :: Integer | c <- show n]


-- 3
-- itn n = itn n

-- 4 yep
-- itn (n + 1) = Succ (itn n)
-- itn 0 = Zero


-- 5
-- itn (n + 1) = let m = itn n in Succ m
-- itn 0 = Zero

-- 6
-- itn = head . m
    -- where {
        -- ; m 0 = [0]
        -- ; m (n + 1) = [sum [x | x <- (1 : m n)]]
    -- }


-- 7
itn' :: Integer -> Nat
itn' = \n -> genericLength [c | c <- show n, isDigit c]

