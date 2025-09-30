minimum':: Ord a => [a] -> a
minimum' [] = error "empty list"
minimum' [x] = x
minimum' (x:xs) = x `min` (minimum' xs)

main = do
    print (minimum' [] :: Int)