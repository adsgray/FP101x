{-# LANGUAGE NPlusKPatterns #-}
import Data.List
import Data.Char
import Unsafe.Coerce

data Nat = Zero | Succ Nat deriving Show

nti :: Nat -> Integer
nti Zero = 0
nti (Succ n) = nti n + 1

itn :: Integer -> Nat
itn 0 = Zero
itn (n+1) = Succ (itn n)

ten = itn 10
thirteen = itn 13

add :: Nat -> Nat -> Nat

check :: Nat -> Nat -> Bool
check m n = (nti (add m n)) == (nti m + nti n)


-- 0 yep
-- add Zero n = n
-- add (Succ m) n = Succ (add n m)

-- 1 yep
-- add (Succ m) n = Succ (add n m)
-- add Zero n = n

-- 2
-- add Zero n = Zero -- nope
-- add (Succ m) n = Succ (add m n)


-- OK, anything with "add n Zero = Zero" is not right

-- 6
-- add n Zero = n
-- add n (Succ m) = Succ (add m n)

-- 7
add n (Succ m) = Succ (add m n)
add n Zero = n

