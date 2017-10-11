;;SICP 练习1.36 为fixed-point添加输出 
(define tolerance 0.00001)
(define (fixed-point f first-guess)

	(define (close-enough? a b)
	  (< (abs (- a b)) tolerance))

	(define (try guess)
		(newline)
		(display (+ 0.0 guess))
	  (let ((next (f guess)))
	  (if (close-enough? guess next)
	  	guess
	  	(try next))))

  (try first-guess))

;(define f (fixed-point (lambda (x) (+ 1 (/ 1.0 x))) 1.0))


(define (f-log x)
  (/ (log 1000) (log x)))


(define (pj-log x)
  (/ (+ x (/ (log 1000) (log x))) 2.0))

(define (nopj x)
  (fixed-point f-log x))



(define (pj x)
  (fixed-point pj-log x))


