;;SICP 例子1.33 通过区间这般寻找方程的根
(define (average a b)
  (/ (+ a b) 2.0))

(define (close-enough? a b)
  (< (abs (f (average a b))) 0.01))

(define (positive? v)
  (> v 0))

(define (negative? v)
  (< v 0))

(define (search f neg-point pos-point)
	(let ((midpoint (average neg-point pos-point))) 
		(if (close-enough? neg-point pos-point)
			midpoint
			(let ((test-value (f midpoint))) 
				(cond ((positive? test-value)
							(search f neg-point midpoint))
				      ((negative? test-value)
				      		(search f midpoint pos-point))
				      (else midpoint)))))
  )

(define (half-interval-method f a b)
  (let ((a-value (f a))
        (b-value (f b)))
    (if (negative? (* a-value b-value))
    	(search f a b)
         (error "errors are not of position of " a b))))

(define (f x)
  (+ (* x 2) 1))


;(search f -10 2)