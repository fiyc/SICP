;;SICP 练习2.30 对树序列进行平方操作

(define l (list 1 (list 2 (list 3 4) 5) (list 6 7)))

;;1. 直接定义(不使用map)

(define (square-tree tree)
  (cond ((null? (car tree)) ())
        ((not (pair? (car tree))) (cons (square (car tree)) (square-tree (cdr tree))))
        (else (cons (square-tree (car tree)) 
                    (square-tree (cdr tree))))))


(define (square-tree-l input-list)  
  (if (null? input-list)  
      ()  
      (if (list? (car input-list))  
      (cons (square-tree (car input-list)) (square-tree (cdr input-list)))  
      (cons (square (car input-list)) (square-tree (cdr input-list))))))  


;;2. 使用map

(define (square-tree-map tree)
  (map (lambda (i) 
  	       (if (pair? i)
  	       	      (square-tree i)
  	       	      (square i))) tree))
