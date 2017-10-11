;;SCIP 练习2.27 深度反转

(define (deep-reverse items)
	(define (iter l result)
	  (cond ((null? l) result)
	        ((pair? (car l)) 
	          (iter (cdr l) (cons (deep-reverse (car l)) result)))
	        (else 
	          (iter (cdr l) (cons (car l) result)))))
  (iter items ()))


(define x (list (list 1 2) (list 3 4)))
(deep-reverse x)