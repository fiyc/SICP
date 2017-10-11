;;SICP 练习2.45
(define (right-split painter n)
  (if (= n 0)
      painter
      (let ((smaller (right-split painter (- n 1))))
           (beside painter (below smaller smaller)))))

(define (up-split painter n)
  (if (= n 0)
      painter
      (let ((smaller (up-split painter (- n 1))))
           (below painter (beside smaller smaller)))))


(define (splite baseDirection spliteDirection)
	(define (iter-splite painter n)
	  (if (= n 0)
	      painter
	      (let ((smaller (iter-splite painter (- n 1))))
	           (baseDirection smaller (spliteDirection smaller smaller)))))
  iter-splite)