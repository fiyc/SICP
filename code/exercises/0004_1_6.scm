;;SICP练习1.6
(define (new-if predicate then-clause else-clause)
	(cond (predicate then-clause)
		  (else else-clause)))

;;牛顿法求平方根
(define (square x)
	(* x x))

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.00001))


(define (improve guess x)
	(/ (+ (/ x guess) guess) 2.0))

(define (sqrt-iter guess x)
	(new-if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x) x)))

(define (sqrt x)
	(sqrt-iter 1 x))