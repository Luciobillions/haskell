{-
1. Definir las siguientes funciones:
• hd :: [a] -> a retorna el primer elemento de una lista.
• tl :: [a] -> [a] retorna toda la lista menos el primer elemento.
• last :: [a] -> a retorna el  ́ultimo elemento de la lista.
• init:: [a] -> [a] retorna toda la lista menos el  ́ultimo elemento.
-}

hd:: [a] -> a
hd (x:xs) =  x


hd'::[a] -> [a]
hd' xs = [x | (x,i) <- zip xs [0..], i==0]
{-
zip xs [0..] crea pares de cada elemento con su índice:
[("a",0),("b",1),("c",2)]

[x | (x,i) <- ..., i == 0] toma solo el que tiene índice 0 → [x]
-}

tl:: [a] -> [a]
tl (_:xs)=  xs

lastt::[a] -> a 
lastt [x] = x
lastt (x:xs) = last xs 

initt::[a] -> [a]
initt [_] = [] 
initt (x:xs)=  x: initt xs


{-
2.Defina una funci ́on que dada una lista, retorne la reversa de la misma.
3. Defina una funci ́on que dadas dos listas, decida si las listas son iguales.
4. Defina una funci ́on que dada una lista decida si es un pal ́ındromo o no.
5. Defina una funci ́on que dado un n ́umero natural, decida si el mismo es primo o no.
-}
reversa::[a] -> [a]
reversa [] = []
reversa(x:xs) = reversa xs ++ [x]

iguale:: Eq a => [a] -> [a] -> Bool
iguale [] [] = True
iguale [] _ = False 
iguale  _ []= False
iguale(x:xs) (y:ys) = x==y && iguale xs ys 

{-
iguale [1,2,3] [1,2,3]
→ (1 == 1) && iguale [2,3] [2,3]
→ True && ((2 == 2) && iguale [3] [3])
→ True && (True && ((3 == 3) && iguale [] []))
→ True && (True && (True && True))
→ True
-}

{-
primo::Int -> Bool
primo n 
    | n <=1 = False 
    | n == 2 = True
    |otherwise = not (divisor n 2 )
    where
        divisor n d 
        | d * d > n = False
        | n `mod` d==0 = True
        |otherwise = divisor n (d+1)
-}

digitos::Int->[Int]
digitos x = [0] 
digitos n = digitosAux (abs n)
    where 
        digitosAux 0 = []
        digitosAux x = digitos(x `div` 10 ) ++ [x `mod` 10]


palindromo:: [Char] -> Bool
palindromo xs =  iguale xs (reversa xs)

--radar, ojo, rotor, otto

--listas infinitas
uno:: [Int]
uno = 1 : uno

numeroRepeat:: Int -> [Int]
numeroRepeat x  = x : numeroRepeat (x+1)


numeronaturales:: Int -> [Int]
numeronaturales n = [1..n]



--funciones de alto orden
listacuad::[Int] -> [Int]
listacuad xs = map(^2) xs 


divide::Int -> Int -> Bool
divide x y = mod x y == 0 
divisores::Int -> [Int]
divisores n = filter ( divide n ) [1..n]


{-
listnat:: [Int] -> [Int]
listnat xs = filter (primos) xs 
-}


sumarenteros::[Int] -> Int
sumarenteros xs = foldl (+) 0 xs
 
{-
factorial n = fold(*)1 [2..n]
-}



ignorar::a ->Int
ignorar x = 1 
tam'::[a] -> Int
tam' xs = foldr ((+).ignorar) 0 xs


 
tam::[a] -> Int
tam xs = foldl (\acc x-> acc + 1) 0 xs
