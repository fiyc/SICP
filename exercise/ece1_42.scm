;;SICP 练习1.42
;;2个函数的复合定义
(define (compose f g)
  (lambda (x) (f (g x))))

(define (square x)
  (* x x))

(define (inc x)
  (+ x 1))

