
prodEscalar2:: Num a=> (a,a) -> (a,a) -> a 
prodEscalar2 t1 t2 = fst (t1) * fst (t2) + snd (t1) * snd(t2)

