reversa :: [Int] -> [Int]

reversa [] = [] -- Caso base

reversa (x:xs) = reversa xs ++ [x]  -- Concatenar x al final de reversa xs


