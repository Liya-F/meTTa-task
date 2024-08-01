;a function to map over a list 
(= (map $func Nil) Nil)
(= (map $func (Cons $h $t))
    (Cons ($func $h) (map $func $t))
)

;a function to double the value of a given number
(= (double $num) (+ $num $num))

;testcase
! (map double (Cons 1 (Cons 2 (Cons 3 Nil))))
