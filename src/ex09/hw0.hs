import Data.List
import Data.Char
import Unsafe.Coerce

data Nat = Zero | Succ Nat deriving Show

nti :: Nat -> Integer

itn :: Integer -> Nat
itn 0 = Zero
itn n = Succ (itn (n - 1))

ten = itn 10

-- 0 I think this is right?
-- nti Zero = 0
-- nti (Succ n) = nti n + 1

-- 1 I think this is right too?
-- nti (Succ n) = nti n + 1
-- nti Zero = 0


-- 2 wut
-- nti n = nti n

-- 3 yep?
-- nti (Succ n) = 1 + nti n
-- nti Zero = 0


-- 4 nope
-- nti Zero = 1
-- nti (Succ n) = (1 + nti n) - 1

-- 5
nti = head . m
    where m Zero = [0]
          m (Succ n) = [sum [x | x <- (1 : m n)]]

-- 6
nti' :: Nat -> Integer
-- nti' = \n -> genericLength [c | c <- show n, c == 'S']

-- 7
nti' = \n -> length [c | c <- show n, c == 'S']

