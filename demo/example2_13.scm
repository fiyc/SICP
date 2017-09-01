;;使用过程实现序对cons

(define (cons x y)
	(define (dispatch m)
	  (cond ((= m 0) x)
	        (else y)))
  dispatch)

(define (car d) (d 0))
(define (cdr d) (d 1))