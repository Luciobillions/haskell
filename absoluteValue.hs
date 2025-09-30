abs :: Int -> Int
abs n = if n < 0 then -n else n --vuelve aplicar el operador -, entonces -(-n) = n 

sumList:: [Int] -> Int
sumList [] = error "Empty list" --lista vacia
sumList [x] = x --lista con un solo elemento
sumList(x:xs) = x + sumList xs  