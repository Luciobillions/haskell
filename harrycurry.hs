--Todas las funciones en Haskell son currificadas por defecto 
--f :: A -> B -> C -> D
-- Es realmente:
--f :: A -> (B -> (C -> D))


-- \x -> expresion
-- \ idnica que empieza una funcion lambda
-- x parametro de la funcion
-- -> separa el parametro del cuerpo
-- 'expresion' lo que la funcion devuelve 

-- Función normal
--doble x = x * 2

-- Función lambda
-- \x -> x * 2

-- Ambas son equivalentes

--currificacion
potencia:: Double -> (Double -> Double)
potencia x y = x ** y

potencia2 :: Double -> Double
potencia2 = potencia 2 

--la forma uncurry con tuplas
desCurry:: (Double, Double) -> Double
desCurry (x,y) = x ** y

suma :: Int -> (Int -> (Int -> Int)) --asi esta currificada
suma = \x -> \y -> \z -> x + y + z

suma4 = suma 5 8 --aplicacion parcial, le falta argumentos que son los que aniado yo 

