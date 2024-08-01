;a function to push an element to a list
(= (push Nil $x) (Cons $x Nil))
(= (push (Cons $h $t) $x) (Cons $x(Cons $h $t)))

;testcase
!(push (Cons 2(Cons 4 Nil)) 6)
