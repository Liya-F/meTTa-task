;a function to pop an element from a list
(= (pop Nil) Nil)
(= (pop (Cons $h $t)) $t)

;testcase
!(pop (Cons 2(Cons 4 Nil)))
