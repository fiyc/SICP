;;SICP 练习1.37
;;f(i) = N(i) / (D(i) + f(i + 1))
;;达到10进制4位精度  k=10
;;递归算法
(define (cont-frac N D k)
	
	(define (f i)
	  (if (> i k)
	      (/ (N i) (D i))
	      (/ (N i)
	         (+ (D i)
	            (f (+ i 1))))))
  (f 1))

(define (test k)
  (cont-frac
  	(lambda (i) 1.0)
  	(lambda (i) 1.0)
  	k))

;;(D(i) + f(i + 1)) / N(i)


;;迭代算法
(define (iter-cont-frac N D k)

	(define (f i current-value)
	  (cond ((= i k)
	  			(f (- i 1) (+ (D (- i 1)) (/ (N i) (D i)))))
	        ((= i 1) 
	        	(/ (N i) current-value))
	        (else
	        	(f (- i 1) (+ (D (- i 1)) (/ (N (- i 1)) current-value ))))))

  (f k 0))

(define (iter-test k)
  (iter-cont-frac
  	(lambda (i) 1.0)
  	(lambda (i) 1.0)
  	k))
