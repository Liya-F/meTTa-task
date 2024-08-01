;a function to reverse a list
(= (reverse Nil) Nil)
(= (reverse (Cons $x $xs)) (append (reverse $xs) (Cons $x Nil)))

;a function to append an element to a list
(= (append Nil $ys) $ys)
(= (append (Cons $x $xs) $ys) (Cons $x (append $xs $ys)))

;testcase
! (reverse (Cons A (Cons B (Cons C Nil))))
