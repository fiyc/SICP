(define (iterative-improve good-enough? improveResult)
	(define (iter result)
	  (if (good-enough? result)
	  	result
	  	(iter (improveResult result))))
  (lambda (guess) (iter guess)))


(define (square x)
  (* x x))

(define (sqrt x)
	(define accept-range 0.00001)

	(define (good-enough? guess)
	  (< (abs (- (square guess) x)) accept-range))

	(define (improve result)
	  (/ (+ result (/ x result)) 2.0))
  ((iterative-improve good-enough? improve) 1))




(define (fixed-point f)
	(define accept-range 0.0001)

	(define (good-enough? guess)
	  (< (abs (- guess (f guess))) accept-range))

	(define (improve guess)
	  (f guess))
  ((iterative-improve good-enough? improve) 1.0))


(define (average-damp f)
  (lambda (x) (/ (+ (f x) x) 2.0)))

(define (f x)
  x)

(define (f-1 x)
  (square (- x 1)))