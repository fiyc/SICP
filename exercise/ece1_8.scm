;;SICP习题1.8
;; 求立方根cube
(define (cubt x)
  (* (* x x) x))

(define (good-enough? guess x)
	(< (abs (- (cubt guess) x)) 0.001))

(define (improve guess x)
	(/ (+ (* 2 guess) (/ x (* guess guess))) 3))

(define (cube-iter guess x)
	(if (good-enough? guess x)
		guess
		(cube-iter (improve guess x) x)))

(define (cubu x)
  (cube-iter 1.0 x))