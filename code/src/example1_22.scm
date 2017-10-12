;;两种斐波那契数列实现

;;递归
(define (fib1 n)
	(cond ((= n 0) 0)
		  ((= n 1) 1)
		  (else (+ (fib1 (- n 1)) (fib1 (- n 2))))))


;;迭代
(define (fib2 n)
	(define (fib-iter a b count)
	  (if (= count n)
	  		b
	  		(fib-iter (+ a b) a (+ count 1))))
    (fib-iter 1 0 0))  

;;fib3 与fib2都是迭代过程， 但是fib3不依赖于n
(define (fib3 n)
	(define (fib-iter a b count)
	  (if (= count 0)
	  		b
	  		(fib-iter (+ a b) a (- count 1))))
    (fib-iter 1 0 n))  