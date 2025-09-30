zeros :: (Eq a, Num a) => [a] -> Int -> Bool
--eq el tipo a debe poder compararse por igualdad 
--num a el tipo a debe ser numerico
--toma una lista de elementos de a
--toma un entero
--devuelve un booleano
zeros a 0 = True
zeros a n = zeros a (n-1) && (a!!(n-1) == 0)
--(n-1) es el indice, a es elemento de la lista

--La función verifica si todos los elementos desde la posición 0 hasta la n-1 son ceros.
-- n cantidad de elementos a verificar 


--este verifica la lista completa, en ves zeros solamente parcial, por el paramaetro n-1
zeroes [] = True
zeroes (a:as) = zeroes as && (a==0)


--e es elemento que verifica si esta en la lista
--perfil , funciona con cualquier elemento
belongs::Eq a => a -> [a] -> Bool
belongs e [] = False --caso base
belongs e (a:as) = belongs e as || (a == e)