;a function to implement foldl
(=(foldl $f $acc $list)
  (case $list
    (
      ((Cons $h $t)
        (foldl $f ($f $acc $h) $t)
      )
      (Nil $acc) 
    )
  )
)

;a function to add two numbers
(=(sum $x $y) (+ $x $y))

;testcase
!(foldl sum 0 (Cons 1 (Cons 2 (Cons 3 (Cons 4 Nil)))))  
