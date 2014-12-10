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

three = itn 3
five = itn 5

mult :: Nat -> Nat -> Nat

add :: Nat -> Nat -> Nat
add n (Succ m) = Succ (add m n)
add n Zero = n

check :: Nat -> Nat -> Bool
check m n = (nti (mult m n)) == (nti m * nti n)


-- 0 non-exhaustive
-- mult Zero Zero = Zero
-- mult m (Succ n) = add m (mult m n)


-- 1 yes?
-- mult m Zero = Zero
-- mult m (Succ n) = add m (mult m n)

-- 2 nope
-- mult m Zero = Zero
-- mult m (Succ n) = add n (mult m n)

-- 3 BOTTOM
-- mult m Zero = Zero
-- mult m n = add m (mult m (Succ n))

