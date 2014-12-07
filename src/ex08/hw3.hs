-- getLine'

gl :: IO String
get :: String -> IO String

--0 WAT on the ' ' case
--1
gl = get ""
get xs
    = do x <- getChar
         case x of
            '\n' -> return xs
            _ -> get (xs ++ [x])
