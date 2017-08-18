;;SICP 练习1.45 多次平均阻尼求n次方根
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

(define (repeat f times)
	(define (iter-action input index)
	  (if (> index times)
	  	input
	    (iter-action (f input) (+ index 1))))
  (lambda (x) (iter-action x 1))) 


(define (average-damp f)
  (lambda (x) (/ (+ (f x) x) 2.0)))

(define (is-damp? f)
  (not (= 1 ((repeat f 2) 1))))


(define (damp f)
  (if (is-damp? f)
  	f
  	(damp (average-damp f))))

(define (time-square base n)
	(define (square-iter result index)
	  (if (> index n)
	    result
	  	(square-iter (* base result) (+ index 1))))
  (square-iter 1 1))

(define (damp-square x n)
	(define (f y)
	  (/ x (time-square y (- n 1))))
  (fixed-point (damp f) 1.0))