(define (make-interval x y)
  (cons x y))

(define (upper-bound y)
  (cdr y))
(define (lower-bound y)
  (car y))


(define (make-center-percent center percent)
  (make-interval (* center (- 1 percent))
                 (* center (+ 1 percent))))

(define (center x)
  (/ (+ (upper-bound x) (lower-bound x)) 2.0))

(define (percent x)
  (/ (- (upper-bound x) (center x)) (center x)))