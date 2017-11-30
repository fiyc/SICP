(load "../demos/huffman.scm")

(define (encode message tree)
  (if (null? message)
	  '()
	  (append (encode-symbol (car message) tree)
			  (encode (cdr message) tree))))

(define (contains? x set)
  (cond ((null? set) false)
		((eq? x (car set)) true)
		(else (contains? x (cdr set)))))


(define (encode-symbol x tree)
  (cond ((null? tree) (error "invalid symbol" x))
		((not (contains? x (symbols tree))) (error "invalid symbol" x))
		(else
		 (if (leaf? tree)
			 '()
			 (if (contains? x (symbols (left-branch tree)))
				 (cons '0 (encode-symbol x (left-branch tree)))
				 (cons '1 (encode-symbol x (right-branch tree))))))))


(define message '(a d a b b c a))


(define sample-tree
  (make-code-tree (make-leaf 'A 4)
				  (make-code-tree
				   (make-leaf 'B 2)
				   (make-code-tree
					(make-leaf 'D 1)
					(make-leaf 'C 1)))))


(encode message sample-tree)

;;(encode-symbol 'A sample-tree)
