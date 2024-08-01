;a function to return the length of list
(= (length ()) 0)
(= (length (Cons $x $xs))
   (+ 1 (length $xs)))

;testcase
! (length (Cons A (Cons B (Cons C ()))))
