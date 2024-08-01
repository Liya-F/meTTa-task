;a function to return the max value
(=(max-value $list)
(case $list
 (
    ((Cons $h $t)
     (max-helper $h $t)
    )
    (Nil ())
 )       
)
)

;a function to compare each element with the current max
(=(max-helper $max $list)
  (case $list
    (
      ((Cons $h $t)
        (if (> $h $max)
          (max-helper $h $t)
          (max-helper $max $t)
        )
      )
      (Nil $max)
        
    )
  )
)

;testcase
!(max-value (Cons 4 (Cons 2 (Cons 3 Nil))))
