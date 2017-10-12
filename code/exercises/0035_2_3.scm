;;SICP 练习2.13 矩形的数据结构
;定义一个点
(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))


(define (make-segment start-point end-point)
  (cons start-point end-point))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cdr segment))


(define (make-rect lt-point rb-point)
  (cons lt-point rb-point))

(define ( parameters)
  body)