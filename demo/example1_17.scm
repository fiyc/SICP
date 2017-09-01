;;牛顿法求平方根
(define (square x)
	(* x x))

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.00001))


(define (improve guess x)
	(/ (+ (/ x guess) guess) 2.0))

(define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x) x)))

(define (sqrt x)
	(sqrt-iter 1 x))


(define rate (+ (/ 0.04 12) 1))
(define month-input 3000)
(define (power time)
	(define (iter index result)
	  (if (> index (* 12 time))
	    result
	    (iter (+ index 1) (+ (* result rate) month-input))))
(display "base: ") (display (* month-input 12 time))
  (iter 1 0))
