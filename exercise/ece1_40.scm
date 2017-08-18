;;SICP 练习1.40
;;定义一个过程cubic, 接收a b c三个入参
;;cubic 返回一个过程， f(x) = x^3 + ax^2 + bx + c

(define (deriv g)
	(define dx 0.00001)
  (lambda (x) (/ (- (g (+ x dx)) (g x)) dx)))

(define (newton-transform g)
  (lambda (x)
  	(- x (/ (g x) ((deriv g) x)))))

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

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(define (cubic a b c)
  (lambda (x) (+ (* x x x) (* a (* x x)) (* b x) c)))


(define (get-bdd a b c)
  (newtons-method (cubic a b c) 1))