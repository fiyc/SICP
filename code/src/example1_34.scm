;; SICP 例子 找出函数的不动点
;;数x称为函数f的不动点, 如果x满足方程f(x) = x.

(define tolerance 0.00001)
(define (fixed-point f first-guess)
	(define (close-enough? a b)
	  (< (abs (- a b)) tolerance))
	(define (try guess)
	  (let ((next (f guess)))
	  (if (close-enough? guess next)
	  	guess
	  	(try next))))
  (try first-guess))


(define (f y)
  ((lambda (y) (+ (sin y) (cos y))) y))
