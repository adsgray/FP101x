-- How should the definition of the function qsort be modified so that it
-- produces a reverse sorted version of a list? Choose one or more possible
-- definitions.

l = [5,3,1,4,2]
l2 = [4,3,5,1,2]
l3 = [1,2,3,4,5]
l4 = [1,2,1,2,3,4,3,4,4,5,4,5]


-- this works
qsort1 [] = []
qsort1 (x : xs) = qsort1 larger ++ [x] ++ qsort1 smaller
    where smaller = [a | a <- xs, a <= x ]
          larger = [b | b <- xs, b > x ]


-- nope, reversing the inner parts messes it up.
-- reverse (qsort x) would work though
qsort2 [] = []
qsort2 (x : xs) = reverse (qsort2 smaller ++ [x] ++ qsort2 larger)
    where smaller = [a | a <- xs, a <= x ]
          larger = [b | b <- xs, b > x ]

qsort3 [] = []
qsort3 (x : xs) = qsort3 larger ++ qsort3 smaller ++ [x]
    where smaller = [a | a <- xs, a <= x ]
          larger = [b | b <- xs, b > x ]


-- this "works" to sort a list if the input is crafted the right way!
qsort4 [] = []
qsort4 (x : xs) = (qsort4 smaller) ++ [x] ++ reverse (qsort4 larger)
    where smaller = [a | a <- xs, a <= x ]
          larger = [b | b <- xs, b > x ]



-- this should work?
qsort5 [] = []
qsort5 (x : xs) = qsort5 larger ++ [x] ++ qsort5 smaller
    where larger = [a | a <- xs, a > x || a == x]
          smaller = [b | b <- xs, b < x ]

-- hmmmm try duplicate elements. yep, it removes them.
qsort6 [] = []
qsort6 (x : xs) = qsort6 larger ++ [x] ++ qsort6 smaller
    where smaller = [a | a <- xs, a < x ]
          larger = [b | b <- xs, b > x ]

-- yep
qsort7 [] = []
qsort7 (x : xs) = 
    reverse
        (reverse (qsort7 smaller) ++ [x] ++ reverse (qsort7 larger))
    where smaller = [a | a <- xs, a <= x ]
          larger = [b | b <- xs, b > x ]


-- nope, empty list.
qsort8 [] = []
qsort8 (x : xs) = qsort8 larger ++ qsort8 smaller
    where smaller = [a | a <- xs, a < x ]
          larger = [b | b <- xs, b >= x ]
