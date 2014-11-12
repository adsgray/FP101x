 
 -- nope, limites on y and z are wrong
 py1 n = [(x,y,z) | x <- [1..n], y <- [1..x], z <- [1..y],
    x^2 + y^2 == z^2]

-- ditto, wrong lower limits on x and z
 py2 n = [(x,y,z) | x <- [1..n], y <- [x..n], z <- [y..n],
    x^2 + y^2 == z^2]

-- bingo
 py3 n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n],
    x^2 + y^2 == z^2]

-- third term of tuple should be sqrt()
 py4 n = [(x,y,x^2 + y^2) | x <- [1..n], y <- [1..n]]
