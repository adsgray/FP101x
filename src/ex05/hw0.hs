-- exponentiation
import Prelude hiding ((^))

-- 0: nope
-- m ^ 0 = 0
-- m ^ n = m * m ^ (n - 1)

-- 1: yep?
-- m ^ 0 = 1
-- m ^ n = m * m ^ (n - 1)

-- 2: nope
-- m ^ 0 = 1
-- m ^ n = m * m ^ n - 1

-- 3:  nope
-- m ^ 0 = 1
-- m ^ n = n * n ^ (m - 1)

-- 4: yep
-- m ^ 0 = 1
-- m ^ n = m * (^) m (n - 1)

-- 5: what if n is 1
-- m ^ 0 = 1
-- m ^ n = m * m * m ^ (n - 2)

-- 6: surely not
-- m ^ 0 = 1
-- m ^ n = (m * m) ^ (n - 1)
--

-- 7: doesn't handle 0
-- m ^ 1 = m
-- m ^ n = m * m ^ (n - 1)
