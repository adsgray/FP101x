l = [1,2,3,4,5]

last1 xs = drop (length xs - 1) xs

last2 xs = head (drop (length xs - 1) xs)

last3 xs = tail (reverse xs)

last4 xs = reverse (head xs)

last5 xs = xs !! (length xs - 1)

last6 xs = head (drop (length xs) xs)

last7 xs = head (reverse xs)

last8 xs = reverse xs !! (length xs - 1)
