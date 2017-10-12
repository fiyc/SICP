;;用序对表示序列
(define a (cons 1 (cons 3 (cons 5 (cons 7 ())))))
;;用list生成序列
(define b (list 1 3 5 7))


;;定义过程list-ref 获取指定序列中指定index的值

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


;;两个序列组合成新的序列
(define (append squares adds)
  (if (null? squares)
  	adds
  	(cons (car squares) (append (cdr squares) adds))
  ))