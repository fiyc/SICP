;;SICP 练习1.3
;;定义一个过程，三个入参, 返回较大2数的和
(define (two_larger_sum x y z)
	(cond ((and (<= x y) (<= x z)) (+ y z))
		  ((and (<= y x) (<= y z)) (+ x z))
		  (else (+ x y))
	))