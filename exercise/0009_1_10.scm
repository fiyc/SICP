;;SICP练习1.10
(define (A x y)
    (cond ((= y 0) 0) 
		  ((= x 0) (* 2 y))
		  ((= y 1) 2)
		  (else (A (- x 1) (A x (- y 1))))))

(define (f n)
    (A 0 n))

;;f(n) = 2n


(define (g n)
  (A 1 n))

;;g(n) = 2^n 


(define (h n)
  (A 2 n))

;;(h n)
;;(A 2 n)
;;(A 1 (A 2 (- n 1)))
;;h(n) = 2^h(n - 1)
;;h(4) = 2^h(3) = 2^16 = 65536
;;h(3) = 2^h(2) = 2^4 = 16
;;h(2) = 2^h(1) = 2^2 = 4