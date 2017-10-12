;;求幂
;;直接翻译
(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (- n 1)))))


;;递归
(define (expt2 b n)
	(define (expt-iter b current-count count)
	  (if (= count 0)
	      current-count
	  	  (expt-iter b (* current-count b) (- count 1))))
  (expt-iter b 1 n))


;;使用三次乘法算出来
;; b^2 = b * b
;; b^4 = b^2 * b^2
;; b^8 = b^4 * b^4


;;连续求平方完成幂运算
;; b^n = (b^(n/2))^2 //n为偶数 b^n = (b^2)^(n/2)
;; b^n = b * b^(n-1) //n为奇数 b^n = (b^2)^(n/2)

(define (even? n)
  (= (remainder n 2) 0))

(define (square b)
  (* b b))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))