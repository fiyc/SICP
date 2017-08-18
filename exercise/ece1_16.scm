;;幂运算
;;多次求平方的方法
;;迭代
;;连续求平方完成幂运算
;; b^n = (b^(n/2))^2 //n为偶数 b^n = (b^2)^(n/2)
;; b^n = b * b^(n-1) //n为奇数 b^n = (b^2)^(n/2)


(define (sqauare b)
 	   (* b b)) 

(define (expt-iter item-param count result)
  (if (= count 0)
     result
     (expt-iter item-param (- count 1) (* result item-param))))

(define (even? b)
  (= (remainder b 2) 0))

(define (expt3 b n)
  (if (even? n)
      (expt-iter (sqauare b) (/ n 2) 1)
      (* (expt-iter (sqauare b) (/ (- n 1) 2) 1) b)))


(define (expt-iter2 b n c)
  (cond ((= n 1) (* b c))
  		((even? n) (expt-iter2 (sqauare b) (/ n 2) c))
        (else (expt-iter2 (sqauare b) (/ (- n 1) 2) (* b c)))))

(define (expt4 b n)
  (expt-iter2 b n 1))