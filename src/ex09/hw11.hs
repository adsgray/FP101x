class Monoid a where
    mempty :: a
    (<>) :: a -> a -> a

instance Monoid [a] where
    mempty = []
    (<>) = ++



l1 = [1,2,3]
l2 = [2,3,4]
l3 = [2,3,4]


