;;SICP 练习2.40
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


(define (flatmap proc seq)
  (accumulate append () (map proc seq)))

(define (unique-pairs n)
  (flatmap 
	(lambda (i) 
	  (map 
	    (lambda (j) (list i j))
	    (enumerate-interval 1 (- i 1))))
	(enumerate-interval 1 n)))


