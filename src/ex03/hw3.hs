import Prelude hiding ((&&))

-- 1
-- True && True = True
-- _ && _ = False

-- 2
-- ugh
-- a && b = if a then if b then True else False else False

-- 3
-- should probably be else False ?
-- a && b = if not (a) then not (b) else True

-- 4
-- need and else, this is an error
-- a && b = if a then b

-- 5
-- nope
-- a && b = if a then if b then False else True else False

-- 6
-- yep
-- a && b = if a then b else False

-- 7
a && b = if b then a else False

t1 = True && True
f1 = True && False
f2 = False && False
f3 = False && True
