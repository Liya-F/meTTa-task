;a function to check whether an element is member of a list or not
(= (is-member $x $list)
    (case $list
        (
            ( (Cons $h $t) (if (== $x $h) True (is-member $x $t)))
            ( Nil False)
        )
    )
)

;testcase
!(is-member 2 (Cons 2 (Cons 7 (Cons 3 ())))) ;True
!(is-member 4 (Cons 2 (Cons 7 (Cons 3 ())))) ;False
