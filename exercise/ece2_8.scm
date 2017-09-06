;;SICP 练习2.8
(define (make-interval x y)
  (cons x y))

(define (upper-bound y)
  (cdr y))
(define (lower-bound y)
  (car y))

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))