;;SICP 练习1.32 抽象计算加法与乘法
;;抽象公共加法与乘法, 得到accumulate
;;accumulate 递归
(define (accumulate combiner null-value term next a b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulate combiner null-value term next (next a) b))))


;;accumulate 迭代
(define (accumulate-iter combiner null-value term next a b)
	(define (iter a result)
	  (if (> a b)
	  	  (combiner result null-value)
	      (iter (next a) (combiner result (term a)))))
  (iter a null-value))

;;计算π的近似值
(define (term x)
  (/ (* (- x 1) (+ x 1)) (* x x)))

(define (next x)
  (+ x 2))


(define (combiner a b)
  (* a b))

(define (getp b)
  (* 4.0 (accumulate combiner 1 term next 3 b)))

(define (getp-iter b)
  (* 4.0 (accumulate-iter combiner 1 term next 3 b)))
;;(getp-iter 3)
;;(* 4.0 (accumulate-iter combiner 1 term next 3 b)))
;;(iter 3 1)
;;(iter 5 (combiner 1 8/9))))
;;
