;;SICP 练习2.5
;;基础：任何一个大于1的整数都可以分解为唯一的一种素数相乘序列

(define (c_cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (c_car x)
	(define (iter count left-num)
	  (if (= (remainder left-num 2) 0)
	  	(iter (+ count 1) (/ left-num 2))
	  	count))
  (iter 0 x))

(define (c_cdr x)
	(define (iter count left-num)
	  (if (= (remainder left-num 3) 0)
	  	(iter (+ count 1) (/ left-num 3))
	  	count))
  (iter 0 x))