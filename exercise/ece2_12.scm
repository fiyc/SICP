;;SICP 练习2.12

;;给出一个开始点， 一个结束点， 定义一条线段
(define (make-segment start-point end-point)
  (cons start-point end-point))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cdr segment))

;;定义一个点
(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))



(define (mid-point segment)
  (cons (/ (+ (x-point (start-segment segment))
              (x-point (end-segment segment)))
           2.0)
        (/ (+ (y-point (start-segment segment))
              (y-point (end-segment segment)))
           2.0)))

(define (print-point point)
  (newline)
  (display "(")
  (display (x-point point))
  (display ",")
  (display (y-point point))
  (display ")")
)

(define start (make-point 1 5))
(define end (make-point 7 3))
(define segment (make-segment start end))
(print-point (mid-point segment))


