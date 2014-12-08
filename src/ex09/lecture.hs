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
