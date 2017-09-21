;;SICP 练习2.31 进一步抽象
(define l (list 1 (list 2 (list 3 4) 5) (list 6 7)))
(define (square-tree tree) (tree-map square tree))

(define (tree-map f tree)
  (map (lambda (i)
  	       (if (pair? i)
  	       	  (tree-map f i)
  	       	  (f i))) tree))