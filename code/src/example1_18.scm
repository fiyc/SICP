;;块结构 
(define (sqrt1 x)
	(define (good-enough? guess x)
	  (< (abs (- (* guess guess) x)) 0.001))

	(define (improve guess x)
	  (/ (+ guess (/ x guess)) 2))

	(define (sqrt-iter guess x)
	  (if (good-enough? guess x)
	  	guess
	  	(sqrt-iter (improve guess x) x)))
  (sqrt-iter 1.0 x))


;;词法作用域
(define (sqrt2 x)
	(define (good-enough? guess)
	  (< (abs (- (* guess guess) x)) 0.001))

	(define (improve guess)
	  (/ (+ guess (/ x guess)) 2))

	(define (sqrt-iter guess)
	  (if (good-enough? guess)
	  	guess
	  	(sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

