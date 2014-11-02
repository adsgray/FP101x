l = [1,2,3,4,5]

-- The library function init, which removes the last element from a non-empty
-- list, can be defined in terms of the library functions introduced in this
-- chapter. Choose one or more possible definitions.

init1 xs = tail (reverse xs) -- [4,3,2,2]
init2 xs = reverse (head (reverse xs)) -- type error, passing element to reverse
init3 xs = reverse (tail xs) -- [6,4,3,2]
init4 xs = take (length xs) xs -- whole list? yep.
init5 xs = reverse (tail (reverse xs)) -- yep
init6 xs = take (length xs - 1) (tail xs) -- [2,3,4,6]
init7 xs = drop (length xs - 1) xs -- [5]
