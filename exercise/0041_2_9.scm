(define (make-interval x y)
  (cons x y))

(define (upper-bound y)
  (cdr y))
(define (lower-bound y)
  (car y))

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))

(define (mul-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

(define (width x)
  (/ (- (upper-bound x) (lower-bound x)) 2))

;(define (sub-interval-width x y)
;  (/ (- (upper-bound (sub-interval x y))
;  	    (lower-bound (sub-interval x y))) 2))

;(upper-bound (sub-interval x y))
;= (- (upper-bound x) (lower-bound y))

;(lower-bound (sub-interval x y))
;= (- (lower-bound x) (upper-bound y))

;(define (sub-interval-width x y)
;  (/ (- (- (upper-bound x) (lower-bound y))
;  	    (- (lower-bound x) (upper-bound y))) 2))

;(define (sub-interval-width x y)
;  (+ (width x) (width y)))

;(define (mul-interval-width x y)
;  (/ (- (upper-bound (mul-interval x y))
;  	    (lower-bound (mul-interval x y))) 2))

;(upper-bound (mul-interval x y))
;=(+ (upper-bound x) (upper-bound y))

;(lower-bound (mul-interval x y))
;=(+ (lower-bound x) (lower-bound y))

;(define (mul-interval-width x y)
;  (/ (- (+ (upper-bound x) (upper-bound y))
;  	    (+ (lower-bound x) (lower-bound y))) 2))

;(define (mul-interval-width x y)
;  (+ (width x) (width y)))