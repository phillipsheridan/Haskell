church 0 = \f -> \x -> x
church n = \f -> \x -> f (church (n-1) f x)
