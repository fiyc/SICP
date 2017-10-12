;;SICP 练习1.31 通用乘法

;;练习a
(define (multiply term next a b)
  (if (> a b)
      1 
      (* (term a)
         (multiply term next (next a) b))))

;;练习b
(define (new-multiply term next a b)
	(define (iter a result)
	  (if (> a b)
	      result
	      (iter (next a) (* result (term a)))))
  (iter a 1))

;;计算π的近似值
(define (term x)
  (/ (* (- x 1) (+ x 1)) (* x x)))

(define (next x)
  (+ x 2))

(define (getP b)
  (* 4.0 (multiply term next 3 b)))


(define (get-newP b)
  (* 4.0 (new-multiply term next 3 b)))



