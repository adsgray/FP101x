-- concat

ll = [[1,2],[3,4],[5,6]]

c :: [[a]] -> [a]
-- 0: bad typed
-- c [] = []
-- c (xs:xss) = xs : concat xss
--


-- 1:
c [] = []
c (xs:xss) = xs ++ c xss
--

-- 2:
-- c [] = [[]]
--c (xs:xss) = xs ++ concat xss
--

-- 3:
-- c [[]] = []
-- c (xs :xss) = xs ++ concat xss
