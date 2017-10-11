;;SICP 练习2.48  

(define (make-vect x y)
  (cons x y))

(define (xcor-vect v)
  (car v))

(define (ycor-vect v)
  (cdr v))

(define (add-vect v1 v2)
  (cons (+ (xcor-vect v1) (xcor-vect v2))
        (+ (ycor-vect v1) (ycor-vect v2))))

(define (sub-vect v1 v2)
  (cons (- (xcor-vect v1) (xcor-vect v2))
        (- (ycor-vect v1) (ycor-vect v2))))

(define (scale-vect v s)
  (cons (* s (xcor-vect v))
        (* s (ycor-vect v))))


(define (make-segment start-v end-v)
  (cons start-v end-v))

(define (start-segment segment)
  (car segment))


(define (end-segment segment)
  (cdr segment))
