-- replicate
--

-- only produces True
rep1 n a = [ True | _ <- [1..n]]

-- produces list of n, not a
rep2 n a = [n | _ <- [1..n]]

-- wut, 1..a ?
rep3 n a = [a | _ <- [1..a]]

-- yep
rep4 n a = [a | _ <- [1..n]]
