;;SICP 练习2.11 改善SICP支持正负数

(define (make-rat n d)
  (cons (if (> (* n d) 0)
  			(abs n)
  		    (* -1 (abs n))) 
        (abs d)))