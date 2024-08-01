;a function to filter a list based on a function which checks condition
(=(filter $function $list)
 (case $list
  (
    (
        (Cons $h $t)
        (if($function $h)
        (Cons $h (filter $function $t))
        (filter $function $t)
        )
    )
    (Nil Nil)
  )
 )
)

;a function to check if a number is positive or negative
(=(is-positive $x)
(if(> $x 0) True False)
)

;testcase
!(filter is-positive (Cons -2(Cons -1(Cons 0(Cons 1(Cons 2 Nil))))))
