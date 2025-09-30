maximum':: Ord a => [a] -> a
maximum'  [] = error "empty list"
maximum' [x] = x
maximum' (x:xs) = x `max` (maximum' xs)

main = do
    print(maximum'[1,2,3,4,5,6,7,8] :: Int)
    

hd::[a]->a --en java [a] seria de tipo generico, cualquier tipo de dato
drop::[a]->[a] --lo que devuelve drop