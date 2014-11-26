-- coffee

-- type Parser = String -> Tree

-- might not use all of the input string so also return unused input
-- type Parser = String -> (Tree,String)

-- might be parsable in many ways, including none, so return list of results
-- if grammar is unambiguous, list will either have single element or none.
-- This is kind of like the Maybe type. Erik likes using list this way.
-- type Parser = String -> [(Tree,String)]

type Parser a = String -> [(a,String)]


item :: Parser Char
item = \inp -> case inp of
            []      -> []
            (x:xs)  -> [(x,xs)]

failure :: Parser a
failure = \inp -> []

-- The M word!!!!
ret :: a -> Parser a
ret v = \inp -> [(v,inp)]

-- OK how to take two parsers and combine the results?
-- if p fails, try q, otherwise return p result
(+++) :: Parser a -> Parser a -> Parser a
p +++ q = \inp -> case p inp of
        [] -> parse q inp
        [(v,out)] -> [(v,out)]

-- the functin 'parse' applies parser to a string
parse :: Parser a -> String -> [(a,String)]
parse p inp = p inp

-- Lecture 2
-- Sequencing
-- keyword 'do'

-- WAT won't compile
p :: Parser (Char, Char)
p = do x <- item
       item
       y <- item
       return (x,y)
    
