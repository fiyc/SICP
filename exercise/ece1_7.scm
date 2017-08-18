;;牛顿法求平方根改进
(define (square x)
	(* x x))


(define (good-enough-b? guess last-guess)
	(and (not (= last-guess 1)) (< (/ (abs (- last-guess guess)) last-guess) 0.1)))

(define (good-enough-a? guess x)
	(< (abs (- (square guess) x)) 0.001))


(define (improve guess x)
	(/ (+ (/ x guess) guess) 2.0))

(define (sqrt-iter guess x)
	(if (and (good-enough-a? guess x) (good-enough-b? guess))
		guess
		(sqrt-iter (improve guess x) x)))

(define (sqrt x)
	(sqrt-iter 1.0 x))


(define (new-sqrt-iter guess x last-guess)
	(if (good-enough-b? guess last-guess)
		guess
		(new-sqrt-iter (improve guess x) x guess)))

(define (new-sqrt x)
	(new-sqrt-iter 1.0 x 1.0))