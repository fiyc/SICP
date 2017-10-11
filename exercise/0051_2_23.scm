;;SICP 练习2.23 完善for-each 过程

(define (for-each proc items)
  (if (not (null? items))
    (begin
      (proc (car items))
      (for-each proc (cdr items)))))



 (define (proc x)
   (newline)
   (display x))