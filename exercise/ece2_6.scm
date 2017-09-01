;;SICP 练习2.6
(define zero (lambda (f) (lambda (x) x)))
(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(add-1 zero)

;(lambda (f) 
;	(lambda (x) (f ((zero f) x)))
;)

((zero f) x)

;(((lambda (f) (lambda (x) x)) f) x)
;((lambda (x) x) x)
;x
(lambda (f) 
	(lambda (x) (f x))
)

;;one = (add-1 zero)
(define (one f)
  (lambda (x) (f x)))

;;two = (add-1 one)
;;(lambda (f) (lambda (x) (f ((one f) x))))
;;--(one f) = (lambda (x) (f x))
;;--((one f) x) = (f x)
;;(lambda (f) (lambda (x) (f (f x))))

(define (two f)
  (lambda (x) (f (f x))))
