;;SICP联系2.18 反转序列后给出一个新序对
(define l (list 1 4 5 6 3 2 22342 232 2 42 2 232))
(define (reverse l)
	(define (iter base target)
	  (if (null? base)
	  	target
	  	(iter (cdr base) (cons (car base) target))
	  ))
  (iter l ()))