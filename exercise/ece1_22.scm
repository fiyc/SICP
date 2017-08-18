;;SICP 练习1.22 得到在指定范围内查找的最小素数的耗时
;;素数检测
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


(define (min-prime minNum)
  (cond ((prime? (+ minNum 1))
          (display "\n找到素数: ")(display (+ minNum 1)) (display "\n耗时: 0")(display (runtime)))
        (else (min-prime (+ minNum 1)))))


(min-prime 1000)
(min-prime 10000)
(min-prime 100000)
(min-prime 1000000)
