;a function to append an element to a list 
(= (append Nil $x) (Cons $x Nil))
(= (append (Cons $h $t) $x) (Cons $h (append $t $x)))

;testcase
!(append (Cons 2(Cons 4 Nil)) 6)
