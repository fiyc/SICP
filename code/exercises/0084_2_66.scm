(define (entry tree) (car tree))
(define (left-branch tree) (cadr tree))
(define (right-branch tree) (caddr tree))


(define (lookup given-key tree-of-records)
  (cond ((null? tree-of-records) false)
		((equal? given-key (key (entity tree-of-records))) (entity tree-of-records))
		((> given-key (key (entity tree-of-records)))
		 (lookup given-key (right-branch tree-of-records)))
		(else
		 (lookup given-key (left-branch tree-of-records)))))
