
data Tree = Leaf Integer
          | Node Tree Tree
          deriving Show

bal :: Tree -> Bool
bal _ = True


l2 = Leaf 2
l4 = Leaf 4
l8 = Leaf 8
l10 = Leaf 10
balyes = Node (Node l2 l4) (Node l8 l10)

-- wut, only one of the implementations appears to visually type check?
