(define (partial-tree elts n)
  (if (= n 0)
	  (cons '() elts)
	  (let ((left-size (quotient (- n 1) 2)))
		(let ((left-result (partial-tree elts left-size)))
		  (let ((left-tree (car left-result))
				(non-left-elts (cdr left-result))
				(right-size (- n (+ left-size 1))))
			(let ((this-entry (car non-left-elts))
				  (right-result (partial-tree (cdr non-left-elts)
											  right-size)))
			  (let ((right-tree (car right-result))
					(remaining-elts (cdr right-result)))
				(cons (make-tree this-entry left-tree right-tree)
					  remaining-elts))))))))


;(1 3 5 7 9 11)
;left-size = 2
;left-tree = 1 3组成的平衡树
;non-left-elts = (5 7 9 11)
;right-size = 3
;this-entity = 5
;right-tree = 7 9 11组成的树



;a b c d e f | g h i j k l m
;length = 13   left = 6  right = 6
;length = 12 left = 5 right = 6
(partial-tree (1 3 5 7 9 11) 6)
(cons (make-tree 5
	  (car (partial-tree (1 3 5 7 9 11) 2))
	  (car (partial-tree (7 9 11) 3))) '())

(partial-tree (1 3 5 7 9 11) 2)
(cons (make-tree 1
				 (car (partial-tree (1 3 5 7 9 11) 0))
				 (car (partial-tree (5 7 9 11) 1)))
	  (7 9 11))
(cons (make-tree 1
				 '()
				 (car (partial-tree (5 7 9 11) 1)))
	  (7 9 11))


















