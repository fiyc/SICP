;; 对于map的实现
(define (map proc items)
  (if (null? items) 
  	()
    (cons (proc (car items))
          (map proc (cdr items)))))

(map (lambda (x) (+ x 1))
     (list 1 2 3 4 5 6 7))