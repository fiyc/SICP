;;SICP 练习2.26
;;(append x y)   (1 2 3 4 5 6)
;;(cons x y)     ((1 2 3) 4 5 6)
;;(list x y)     ((1 2 3) (4 5 6))
(define x (list 1 2 3))
(define y (list 4 5 6))

(define a (append x y))

(define b (cons x y))

(define c (list x y))

