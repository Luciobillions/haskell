{-
La multiplicacion de dos nros positivos
se puede definir usando la suma. Desarrolla la funcion multiplicacion
-}

mul':: Int -> Int -> Int 
mul' n 0 = 0
mul' n m = n + mul' n (m-1) 