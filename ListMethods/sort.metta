;a function to implement Selection Sort
(=(sort $list)
(case $list
(
    ((Cons $h $t)
     (Cons (min-value $list) (sort (remove-element (min-value $list) $list)))
    )
    (Nil Nil)
)
))

;a function to find the minimum value
(=(min-value $list)
(case $list
 (
    ((Cons $h $t)
     (min-helper $h $t)
    )
    (Nil ())
 )       
)
)

;a helper function to the min-val function
(=(min-helper $min $list)
  (case $list
    (
      ((Cons $h $t)
        (if (< $h $min)
          (min-helper $h $t)
          (min-helper $min $t)
        )
      )
      (Nil $min)
        
    )
  )
)

;a function to remove the smallest element from the list
(= (remove-element $x Nil) Nil)
(= (remove-element $x (Cons $h $t)) 
    (if (== $h $x) (remove-element $x $t)
    (Cons $h (remove-element $x $t)))
    )

;testcase
!(sort (Cons 5 (Cons 2 (Cons 1 Nil))))
