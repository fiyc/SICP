(define (make-interval x y)
  (cons x y))

(define (upper-bound y)
  (cdr y))
(define (lower-bound y)
  (car y))

(define (mul-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

(define (div-interval x y)
  (mul-interval x
                (make-interval (/ 1.0 (upper-bound y))
                               (/ 1.0 (lower-bound y)))))

(define (div-interval x y)
  (if (<= (* (lower-bound y) (upper-bound y)) 0)
       (error "Div 0:" y)
       (mul-interval x
                (make-interval (/ 1.0 (upper-bound y))
                               (/ 1.0 (lower-bound y))))))



;(define (div-interval x y)  
;  (if (< (* (upper-bound y) (lower-bound y)) 0)  
;      (error "Div 0:" y))  
;  (mul-interval x  
;        (make-interval (/ 1.0 (upper-bound y))  
;                   (/ 1.0 (lower-bound y)))))  
