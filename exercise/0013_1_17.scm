;;迭代求乘积
(define (mulitply a b)
  (if (= b 0)
      0
      (+ a (mulitply a (- b 1)))))

;;a * b = 2a * (b/2) ;;b偶数
;;a * b = a + (2a * (b-1)/2);;b奇数

(define (double input)
  (+ input input))

(define (halve input)
  (/ input 2))

(define (even? input)
  (= (remainder input 2) 0))



(define (mulitply2 a b result)
  (cond ((= b 0) result)
  		((even? b) (mulitply2 (double a) (halve b) result))
  	    (else (mulitply2 (double a) (halve (- b 1)) (+ result a)))))


(define (mulitply3 a b result)
  (cond ((= b 1) (+ a result))
      ((even? b) (mulitply2 (double a) (halve b) result))
        (else (mulitply2 (double a) (halve (- b 1)) (+ result a)))))

(define (muli a b)
  (mulitply2 a b 0))

(define (muli2 a b)
  (mulitply3 a b 0))

;;计算2 * 18, 用m表示muliply2过程 
;; (m 2 18 0)
;; (m 4 9 0)
;; (m 8 4 4)
;; (m 16 2 4)
;; (m 32 1 4)
;; (m 64 0 36)
;; 36