;;SICP 练习1.44
;;平滑函数
(define (smooth f)
	(define dx 0.0001)
  (lambda (x) (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))


(define (repeat f times)
	(define (iter-action input index)
	  (if (> index times)
	  	input
	    (iter-action (f input) (+ index 1))))
  (lambda (x) (iter-action x 1))) 


(define (average-damp f)
  (lambda (x) (/ (+ (f x) x) 2.0)))

(define (is-damp? f)
  (not (= 1 ((repeat f 2) 1))))


(define (damp f)
  (if (is-damp? f)
  	f
  	(damp (average-damp f))))

(define (time-square base n)
	(define (square-iter result index)
	  (if (> index n)
	    result
	  	(square-iter (* base result) (+ index 1))))
  (square-iter 1 1))

(define (f x y n)
  )




