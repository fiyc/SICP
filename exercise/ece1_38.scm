;;SICP 练习1.38 
(define (cont-frac N D k)
	
	(define (f i)
	  (if (> i k)
	      (/ (N i) (D i))
	      (/ (N i)
	         (+ (D i)
	            (f (+ i 1))))))
  (f 1))


(define (D i)
  (if (> (remainder i 3) 1)
      (* 2 (+ 1 (/ (- i (remainder i 3)) 3)))
      1))


(define (test k)
  (+ 2 (cont-frac
  	(lambda (i) 1.0)
    D
    k)))