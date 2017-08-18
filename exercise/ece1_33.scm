;;SICP 练习1.33
(define (smallest-divisor n)
  (find-devisor n 2))

(define (find-devisor n test-divisor)
  (cond ((> (sqare test-divisor) n) n)
      ((= (remainder n test-divisor) 0) test-divisor)
        (else (find-devisor n (+ test-divisor 1)))))


(define (sqare x)
  (* x x))


(define (prime? n)
  (= n (smallest-divisor n)))


;;accumulate 迭代
(define (accumulate-iter combiner null-value term next a b)
	(define (iter a result)
	  (if (> a b)
	  	  (combiner result null-value)
	      (iter (next a) (combiner result (term a)))))
  (iter a null-value))

(define (filtered-accumulate filter combiner null-value term next a b)
	(define (iter a result)
	  (cond ((> a b) result)
	        ((filter (term a)) (iter (next a) (combiner result (term a))))
	        (else (iter (next a) result))))
  (iter a null-value))

;;求出a到b之间所有的素数之和
(define (get-sum-of-prime a b)
	(define (term a)
	  a)

	(define (add a b)
	  (+ a b))
	(define (next a)
	  (+ a 1))
  (filtered-accumulate prime? add 0 term next a b))


