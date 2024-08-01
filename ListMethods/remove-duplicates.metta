;a function to remove duplicate elements 
(= (remove-duplicates Nil) Nil)
(= (remove-duplicates (Cons $x $xs))
  (if (is-member $x $xs)
    (remove-duplicates $xs)
    (Cons $x (remove-duplicates $xs))
  )
)

;a function to check if an element is member of a list
(= (is-member $x $list)
    (case $list
        (
            ( (Cons $h $t) (if (== $x $h) True (is-member $x $t)))
            ( Nil False)
        )
    )
)

;testcase
! (remove-duplicates (Cons A (Cons B (Cons B Nil))))
