-- lazy evaluation

-- allows infinite data structures
-- allows modularity/compose programs
--

sq :: Int -> Int
sq n = n * n

-- expression sq(3 + 4)
-- can either eval 3+4 first, get sq(7)
-- or (3+4)*(3+4)
-- but we've evaluated 3+4 twice.
-- what about side effects.
--
-- In Haskell, 2 different (but terminating)
-- ways of evaluating the same expresison will
-- always give the same final result.
--
-- 2 reduction strategies
-- to decide which redex (Reducible subexpression) to choose
--
-- innermost: an innermost redex is always reduced
-- outermost: an outermost redex is always reduced
--
-- compare?
--
-- loop = tail loop
-- wat?
-- list that chases its own tail
-- FOREVER
--
-- let's evaluate:
-- fst (1, loop)
--
-- innermost:
-- = fst(1, tail loop)
-- = fst(1, tail (tail loop))
-- ...
-- does not terminate.
-- this eval/n order is too strict.
--
-- outermost:
-- fst (1, loop)
-- = 1
--
-- outermost may give a result when innermost fails to terminate
-- for a given expr/n if t.e. any reduction sequence that terminates then
-- outermost red/n also terminates, with the same result.
--
-- but as seen above it can be more innefficient.
-- outermost may require more steps.
--
-- problem can be solved by using pointers to indicate sharing of expr/ns
-- during evaluations.
-- lazy evaluation = outermost reduction + sharing
--
-- * never requires more steps than inner

ones :: [Int]
ones = 1 : ones

-- infinite list of 1s
-- ok evaluate 
-- head ones
-- innermost doesn't terminate
-- lazy:
-- head ones = head (1: ones) = 1 -- DONE!
--
-- using lazy eval/n expressions are only evaluated as **much as required**
-- to produce the final result.
--
-- ones is not actually infinite... just potentially infinite.
--
-- we can generate finite lists by taking elements from infinite lists
--
-- take 5 ones
-- [1,1,1,1,1]
-- take 5 [1..] (same)
--
-- take 5 is the control, [1..] is the data
--
-- 1. write down 2,3,4
-- 2. mark the first value p in the list as prime
-- 3. delete eall multiples of p from the list
-- 4. return to step 2

primes :: [Int]
primes = sieve [2..]

sieve :: [Int] -> [Int]
sieve (p:xs) = p : sieve [ x | x <- xs, x `mod` p /= 0]



