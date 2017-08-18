;;SICP 例子 过程作为参数
(define (sum term next a b)
  (if (> a b) 
  	  0
  	  (+ (term a)
  	     (sum term next (next a) b))))


(define (sum-cubes a b)
	(define (add-one a)
	  (+ a 1))
	(define (cube a)
	  (* a a a))
  (sum cube add-one a b))

(define (sum-interger a b)
	(define (add-one a)
	  (+ a 1))
	(define (get-self a)
	  a)
  (sum get-self add-one a b))


;;求出函数f在范围a,b之间的定积分的近似值
(define (intergral f a b dx)
	(define (term a)
	  (f (+ a (/ dx 2.0))))
	(define (add-dx x)
	  (+ x dx))
  (* (sum term add-dx a b) dx))

(define (cube x)
  (* x x x))