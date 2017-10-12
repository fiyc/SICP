;;SICP 练习1.41 
;;定义一个过程，入参是过程a
;;返回一个过程b, b中将应用两次a
;;(((double (double double)) inc) 5) = 21
(define (double f)
	(define (iter-action input index maxindex)
	  (if (> index maxindex)
	  	input
	    (iter-action (f input) (+ index 1) maxindex)))
  (lambda (x) (iter-action x 1 2))) 

  (define (inc x)
    (+ x 1))