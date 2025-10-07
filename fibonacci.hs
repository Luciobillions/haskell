{-
(*) Escriba un programa que calcule el n-esimo valor en la sucesi ́on de fibonacci. La sucesi ́on
de Fibonacci se trata de una serie infinita de n ́umeros naturales que empieza con un 0 y un 1 y
contin ́ua a ̃nadiendo n ́umeros que son la suma de los dos anteriores:

0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597. . .

> fibonacci 0 = 0
> fibonacci 1 = 1
> fibonacci 2 = 1
> fibonacci 3 = 2
...
> fibonacci 11 = 89
-}

--version ineficiente
fibonacci:: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1 
fibonacci n = fibonacci(n-1) + fibonacci(n-2)


-- n: cuantos pasos faltan, 0 fibonaci actual (F(0)), 1 el siguiente
-- go funcion axuliar, va reduciendo n mientras actualza los valores
fibonacciplus:: Int -> Integer
fibonacciplus n = go n 0 1 
    where 
        go 0 a _ = a 
        go k a b = go (k-1) b (a+b)


