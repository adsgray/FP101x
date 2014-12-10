-- declaring types and classes
-- http://en.wikibooks.org/wiki/Haskell/Classes_and_types
--
--

-- alias
type String = [Char]

--
type Pos = (Int, Int)

origin :: Pos
origin = (0,0)

left :: Pos -> Pos
left (x,y) = (x - 1, y)

-- parameterized type alias
type Pair a = (a,a)

mult :: Pair Int -> Int
mult (m,n) = m * n

copy :: a -> Pair a
copy x = (x,x)

-- can be nested
type Trans = Pos -> Pos

-- but not recursive
-- must go through a nominal type
-- type Tree = (Int, [Tree]) -- WUT is this

-- data declarations, create nominal type
-- constructors on the rhs. 
-- like scala case classes.
data Bool = False | True
-- like: Bool is an abstract base class, False and True extend Bool and are
-- concrete.

-- type and constructor names must begin with uppercase letter
-- like CFG: lhs is non-terminal, rhs is terminals

data Answer = Yes | No | Unknown
answers :: [Answer]
answers = [Yes, No, Unknown]

flip :: Answer -> Answer
flip Yes = No
flip No = Yes
flip Unknown = Unknown

--
data Shape = Circle Float 
           | Rect Float Float
square :: Float -> Shape
square n = Rect n n

area :: Shape -> Float
-- pattern match, like dynamic/virtual dispatch
area (Circle r) = pi * r^2
area (Rect x y) = x * y

-- Circle and Rect can be seen as functions that return Shapes?
-- construct values of type Shape

-- data declarations can also have parameters
data Maybe a = Nothing | Just a


-- 2. Recursive types
-- cannot do with type synonyms
-- require a nominal type

data Nat = Zero | Succ Nat

nti :: Nat -> Int
nti Zero = 0
nti (Succ n)  = 1 + nti n

itn :: Int -> Nat
itn 0 = Zero
itn n = Succ (itn (n - 1))

-- gross, converting:
add :: Nat -> Nat -> Nat
add m n = itn (nt1 m + nti n)

-- Erik likes this one better:
add' Zero n = n
add' (Succ m) n = Succ (add m n)

--eg:
-- add (Succ (Succ Zero)) (Succ Zero)



-- 3. Type classes
data Expr = Val Int
          | Add Expr Expr
          | Mul Expr Expr


size :: Expr -> Int
size (Val n) = 1
size (Add x y) = size x + size y
size (Mul x y) = size x + size y

eval :: Expr -> Int
eval (Val n) = n
eval (Add x) = eval x + eval y
eval (Mul x y) = eval x * eval y

-- foldr


-- binary trees
-- values in the nodes and in the trees

data Tree = Leaf Int
          | Node Tree Int Tree

occurs :: Int -> Tree -> Bool
occurs m (Leaf n) = m==n
occurs m (Node l n r) = m == n
                      || occurs m l
                      || occurs m r
                      
flatten :: Tree -> [Int]
flatten (Leaf n) = [n]
flatten (Node l n r) = flatten l ++ [n] ++ flatten r


-- it's a search tree if it flattens to a sorted list
-- can improve occurs:

occurs' :: Int -> Tree -> Bool
occurs' m (Leaf n) = m==n
occurs' m (Node l n r) | m == n = True
                       | m<n = occurs' m l
                       | m>n = occurs' m r
