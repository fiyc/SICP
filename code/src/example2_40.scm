;; 获取给定区间的整数序列
(define (enumerate-interval  low high)
  (if (> low high)
      ()
      (cons low (enumerate-interval (+ low 1) high))))


(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define n 5)

(accumulate append
			()
			(map (lambda (i)
					(map (lambda (j) (list i j))
						 (enumerate-interval 1 (- i 1))))
				  (enumerate-interval 1 n)))


(define (flatmap proc seq)
  (accumulate append () (map proc seq)))


(flatmap 
	(lambda (i) 
	  (map 
	    (lambda (j) (list i j))
	    (enumerate-interval 1 (- i 1))))
	(enumerate-interval 1 n))


(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair))))


(define (make-pair-sum pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))