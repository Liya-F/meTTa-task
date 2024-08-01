;a function to remove an element from a list
(= (remove-element $x Nil) Nil)
(= (remove-element $x (Cons $h $t)) 
    (if (== $h $x) (remove-element $x $t)
    (Cons $h (remove-element $x $t)))
    )

;testcase
!(remove-element 1 (Cons 1 (Cons 2 (Cons 3 Nil))))
