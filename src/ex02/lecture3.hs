-- TYPES AND CLASSES - PART 3
-- type classes and polymorphic functions
-- polymorphic functions: not defined on concrete types but on type variables
-- concrete? types start with an uppercase letter eg. Int
-- type variable a, length :: [a] -> Int
--
--
-- overloaded functions
-- restricting type of parameters. domain.

sum' :: Num a => [a] -> a

sum' [] = 0
sum' (x : xs) = x + sum xs

