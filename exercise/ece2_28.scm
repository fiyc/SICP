;;SICP 练习2.28 遍历树的所有树叶， 从左到右
(define (deep-reverse items)
	(define (iter l result)
	  (cond ((null? l) result)
	        ((pair? (car l)) 
	          (iter (cdr l) (cons (deep-reverse (car l)) result)))
	        (else 
	          (iter (cdr l) (cons (car l) result)))))
  (iter items ()))

(define (fringe tree)
	(define (iter t result)
	  (cond ((null? t) result)
	        ((pair? (car t))
	          (iter (cdr t) (iter (car t) result)))
	        (else 
	          (iter (cdr t) (cons (car t) result)))))
  (iter (deep-reverse tree) ()))


(define x (list (list 1 2 (list 5 6 7)) (list 3 4)))
(fringe x)