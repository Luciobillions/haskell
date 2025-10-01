--Dado el siguiente programa, determine el perfil de la funci ́on.
--length ’ [] = 0
--length ’ ( _ : xs ) = 1 + length ’ xs
--Analice c ́omo se realiza la recursi ́on cuando se ejecuta la funci ́on con los siguientes valores:
--(a) > length [2,5,7]  
--(b) > length [’a’,’z’]
--(c) > length [[3,4],[]]
--Construya para cada caso el  ́arbol de ejecuci ́on del programa.

length':: [a] -> Int
length' [] = 0 -- en el perfil va Num
length' ( _ : xs) = 1 + length' xs

