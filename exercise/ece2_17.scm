;;定义过程last-pair 获取序列的最后一位
(define l (list 1 4 5 6 3 2 22342 232 2 42 2 232))

(define (list-ref list index)
  (if (= index  0)
  	(car list)
  	(list-ref (cdr list) (- index 1))
  ))

;;获取序列的长度
(define (length list)
  (if (null? list)
  	0
  	(+ 1 (length (cdr list)))
  ))

 (define (last-pair l)
   (list-ref l (- (length l) 1)))