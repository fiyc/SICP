;;素数检测
(define (smallest-divisor n)
  (find-devisor n 2))

(define (find-devisor n test-divisor)
  (cond ((> (sqare test-divisor) n) (display (runtime)) n)
  		((= (remainder n test-divisor) 0) (display (runtime)) test-divisor)
        (else (find-devisor n (+ test-divisor 1)))))


(define (sqare x)
  (* x x))


(define (prime? n)
  (= n (smallest-divisor n)))