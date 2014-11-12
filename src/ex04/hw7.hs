--
import Data.Char

let2int :: Char -> Int
let2int c 
    | isLower c = ord c - ord 'a'
    | otherwise = ord c - ord 'A'

int2let :: Bool -> Int -> Char
int2let True n = chr (ord 'a' + n)
int2let False n = chr (ord 'A' + n)

shift :: Int -> Char -> Char
shift n c = int2let (isLower c) ((let2int c + n) `mod` 26)

encode :: Int -> String -> String
encode n xs = [shift n x | x <- xs]
