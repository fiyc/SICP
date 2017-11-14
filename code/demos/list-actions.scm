;; 获取items的第n位
(define (list-ref items n)
	(if (= n 0)
		(car items)
		(list-ref (cdr items) (- n1))))

;;获取items的长度
(define (length items)
		(if (null? items)
			0
			(+ 1 (length (cdr items)))))
			

;; 两个表组合成新表
(define (append list1 list2)
	(if (null? list1)
		list2
		(cons (car list1) (append (cdr list1) list2))))
