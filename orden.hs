{-
2*cuadrado(hd[2,4,5,6,7,8])
orden aplicativo reduce mas adentro mas a a izquierda
en este caso hd[2,4,5,6,7,8]
primero arranca agarrando
2*cuadrado(hd[2,4,5,6,7,8])
= {def head}
2 * cuadrado (2)
={def cuadrado}
2*(2*2)
={aritmetica} 
2*4
={aritmetica} 
8 (formal normal \ canonica) 4 reducciones 

en el orden normal mas afuera y mas a la izquierda
en este caso 2*cuadrado

2*cuadrado(hd[2,4,5,6,7,8])
2*(hd[2,4,5,6,7,8])*(hd[2,4,5,6,7,8]) 
=def cuadrado
2*2(hd[2,4,5,6,7,8])
= aritmetica
4 * (hd[2,4,5,6,7,8])
= def * 
4 * 2 
=aritmetica 
8 (formal normal) 5 reducciones 
-}

cuadrado:: Int -> Int
cuadrado x =  x*x

hd::[a] -> a
hd(x:xs) = x 

{-
dada la definicion linf = 1 : linf
resuelve los siguientes pasos para la expresion 
    hd linf 

orden aplicativo 
hd linf
= def linf
hd (1 : linf) 
1:(1 : linf) 
1:(1:(1 : linf)) 
infinito

orden normal
hd(1:linf)
=hd 
1

 
-}

f :: Int -> Int -> Int 
f x 0 = x
f x (n+1) = cuadrado (f x n) -- esto en haskell no anda porque no se puede hacer (n+1), seria (n-1)

{-
f 2 (2+1)

orden aplicativo
cuadrado (f 2 3)
=def f 
cuadrado (f 2 2)
=def f
cuadrado (f 2 1)
=def f
cuadrado (f 2 0) -- caso base
=def f
cuadrado (cuadrado(cuadrado 2))
=def cuadrado
cuadrado (cuadrado(cuadrado 2))
=def cuadrado
cuadrado (cuadrado(2*2))
=arimetica
cuadrado (cuadrado(4))
=def cuadrado
cuadrado (4*4)
=arimetica
cuadrado(16)
=def cuadrado
16*16
=arimetica
256(forma canonica)10 reducciones

el la formal normal tiene  es 29 reducciones
-}


{-
24) utilizando orden aplicativo y normal, evalua la siguiente expresion
    square inf 
-}

square:: Int -> Int
square x = x*x

inf:: Int
inf = inf + 1 

{-
forma aplicativa
square inf 
=def inf 
square (inf + 1)
=def inf 
square (inf + 1(inf + 1))
=def inf 
square (inf + 1(inf + 1(inf + 1)))
infinito faimbre'

forma normal
square inf
=def square
inf * inf 
=def inf
(inf + 1) * (inf + 1) 
infinito

-}


{-
Lazy con el ejercicio 22
f 2 3 
=def f
Cuadrado (f 2 2)
= def cuadrado
(f 2 2) *  (f 2 2)
x * x
[x = cuadrado (f 2 2) ] -- variable local
=def f 
x * x 
[x = cuadrado (f 2 1)]-- por definicion de f 
=def cuadrado 
x * x 
[x = y * y , y = f 2 1]
=def f 
x*x
[x = y * y, y = cuadrado (f 2 0)]
=def cuadrado
x*x 
[x=y*y, y = z * z , z = f 2 0]
=def f 
x*x
[x=y*y, y = z * z , z = 2 ]
=sustitucion
x*x
[x=y*y, y = 2 * 2]
=arimetica
x*x
[x=y*y, y = 4]
=sustitucion
x*x
[x=4*4]
=arimetica
x*x
[x=16]
=sustitucion
16*16
=aritmetica
256

-}
