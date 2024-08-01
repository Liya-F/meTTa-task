;a function to implement foldl
(=(foldr $f $acc $list)
  (case $list
    (
      ((Cons $h $t)
        ($f $h (foldr $f $acc $t))
      )
      (Nil $acc)
    )
  )
)

;a function to add two numbers
(=(sum $x $y) (+ $x $y))

;testcase
!(foldr sum 0 (Cons 1 (Cons 2 (Cons 3 (Cons 4 Nil)))))
