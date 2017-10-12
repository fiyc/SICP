;;SICP 练习1.43
;;重复调用函数

(define (repeat f times)
	(define (iter-action input index)
	  (if (> index times)
	  	input
	    (iter-action (f input) (+ index 1))))
  (lambda (x) (iter-action x 1))) 

(define (square x)
  (* x x))