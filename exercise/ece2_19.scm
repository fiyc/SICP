;;SICP 换硬币问题， 使用序列代表硬币种类
(define us-coins (list 50 25 10 5 1))
(define uk-coins (list 1 5 10 25 50))

(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else (+ (cc amount (except-first-denomination coin-values))
                 (cc (- amount
                 	    (first-denomination coin-values)) coin-values)))))

(define (length list)
  (if (null? list)
  	0
  	(+ 1 (length (cdr list)))
  ))

(define (no-more? coin-values)
  (= (length coin-values) 0))

(define (except-first-denomination coin-values)
  (cdr coin-values))

(define (first-denomination coin-values)
  (car coin-values))