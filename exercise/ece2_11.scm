;;SICP 练习2.11

(define (make-interval x y)
  (cons x y))

(define (upper-bound y)
  (cdr y))
(define (lower-bound y)
  (car y))


(define (mul-interval x y)
	(define (case-one x y)
	  (make-interval (* (upper-bound x) (upper-bound y))
	                 (* (lower-bound x) (upper-bound y))))

	(define (case-two x y)
	  (make-interval (* (lower-bound x) (upper-bound y))
	                 (* (lower-bound x) (lower-bound y))))

	(define (case-three x y)
	  (make-interval (* (lower-bound x) (upper-bound y))
	                 (* (upper-bound x) (lower-bound y))))

	(define (case-four x y)
	  (make-interval (* (upper-bound x) (lower-bound y))
	                 (* (lower-bound x) (lower-bound y))))

	(define (case-five x y)
	  (make-interval (* (lower-bound x) (upper-bound y))
	                 (* (upper-bound x) (upper-bound y))))

	(define (case-six x y)
	  (make-interval (* (lower-bound x) (upper-bound y))
	                 (* (upper-bound x) (upper-bound y))))

	(define (case-seven x y)
	  (make-interval (* (upper-bound x) (lower-bound y))
	                 (* (lower-bound x) (upper-bound y))))

	(define (case-eight x y)
	  (make-interval (* (upper-bound x) (lower-bound y))
	                 (* (upper-bound x) (upper-bound y))))

	(define (case-nine x y)
	  (make-interval (* (lower-bound x) (lower-bound y))
	                 (* (upper-bound x) (upper-bound y))))
  (cond ((and (< (upper-bound x) 0) (< (upper-bound y) 0)) (case-one x y))
        ((and (< (upper-bound x) 0) (< (* (lower-bound y) (upper-bound y)) 0)) (case-two x y))
        ((and (< (upper-bound x) 0) (> (lower-bound y) 0)) (case-three x y))
    	((and (< (* (lower-bound x) (upper-bound x)) 0) (< (upper-bound-bound y) 0)) (case-four x y))
    	((and (< (* (lower-bound x) (upper-bound x)) 0) (< (* (lower-bound y) (upper-bound y)) 0)) (case-five x y))
    	((and (< (* (lower-bound x) (upper-bound x)) 0) (> (lower-bound y) 0)) (case-six x y))
    	((and (> (lower-bound x) 0) (< (upper-bound y) 0)) (case-seven x y))
    	((and (> (lower-bound x) 0) (< (* (lower-bound y) (upper-bound y)) 0)) (case-eight x y))
    	((and (> (lower-bound x) 0) (> (lower-bound y) 0)) (case-eight x y))))