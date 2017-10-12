(define (exmod base exp m)
  (cond ((= exp 0) 1)
  		((even? exp)
  		 (remainder (square (exmod base (/ exp 2) m)) m))
  		(else 
  		 (remainder (* base (exmod base (- exp 1) m)) m))))


;;(exmod 2 3 5)
;;(remainder (* 2 (exmod 2 2 5)) 5)
;;(remainder (* 2 (remainder (square (exmod 2 1 5)) 5)) 5)
;;(remainder (* 2 (remainder (square (remainder (* 2 (exmod 2 0 5)) 5)) 5)) 5)
;;(remainder (* 2 (remainder (square (remainder (* 2 1) 5)) 5)) 5)
;;(remainder (* 2 (remainder (square (remainder 2 5)) 5)) 5)
;;(remainder (* 2 (remainder (square 2) 5)) 5)
;;(remainder (* 2 (remainder 4 5)) 5)
;;(remainder (* 2 4) 5)
;;(remainder 8 5)
;;3

(define (fermat-test? n)
	(define (try-it a)
	  (= (exmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) (display (runtime)) true)
        ((fermat-test? n) (fast-prime? n (- times 1)))
        (else (display (runtime)) false)))