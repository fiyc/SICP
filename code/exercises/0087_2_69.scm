(load "../demos/huffman.scm")

(define (generage-huffman-tree pairs)
  (successive-merge (make-leaf-set pairs)))

(define (successive-merge set)
  (cond ((null? (cdr set)) (car set))
		((null? (cddr set)) (make-code-tree (car set) (cadr set)))
		(else
		 (successive-merge (adjoin-set (make-code-tree (car set)
													   (cadr set))
									   (cddr set))))))

(define pairs (list (cons 'A 4) (cons 'B 2) (cons 'C 1) (cons 'D 1)))

(define pairs
  (cons (list 'A 4)
		(cons (list 'B 2)
			  (cons (list 'C 1)
					(list 'D 1)))))

(define tree (generage-huffman-tree pairs))
