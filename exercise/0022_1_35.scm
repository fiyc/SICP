;; SICP 练习1.35 黄金分割率
;;Φ^2 = Φ + 1
;;证明黄金分割率是 f(x) = x + 1/x 函数的不动点
;;1. Φ^2 = Φ + 1
;;2. 两边同时除以Φ得： Φ = 1 + 1/Φ
;; f(x) 当x为不动点时满足 f(x) = x = x + 1/x 此时 x = Φ

;;计算黄金分割率
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

(fixed-point (lambda (x) (+ 1 (/ 1.0 x))) 1.0)