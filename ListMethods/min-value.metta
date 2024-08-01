;a function to return the min value
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

;a function to compare each element with the current min
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

;testcase
!(min-value (Cons 0 (Cons -1 (Cons 1 Nil))))
