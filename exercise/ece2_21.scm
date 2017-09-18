;;SICP 练习2.21 完成square-list中的表达式
;;square-list 以一个数值表为参数, 返回每个数的平方构成的表
(define (square x)
  (* x x))

(define (square-list items)
  (if (null? items)
  	()
  	(cons (square (car items))
  	      (square-list (cdr items)))))

(define (square-list-map items)
  (map square items))