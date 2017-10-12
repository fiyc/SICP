;;SICP 练习2.22
;;第一种写法产生倒序的原因是由于总是将序列的第一位加入answer中， 因此改变了序列的顺序
;; 第二种写法不行的原因是调用coins时， 将一个序列与一个数值组合起来， 顺序颠倒
;;写下第二种修改方式， 查看产生结果， 应该是一个序列，单序列的每一项可能为序列， 也可能是数值
(define (square-list items)
	(define (iter things answer)
	  (if (null? things)
	    answer
	    (iter (cdr things)
	          (cons answer 
	                (square (car things))))))
  (iter items ()))

;;尝试重写 需要一个使序列倒序的过程
(define (reverse items)
	(define (iter things answer)
	  (if (null? things)
	    answer
	    (iter (cdr things)
	          (cons (car things) answer))))
  (iter items ()))

(define (last items)
  (if (= 1 (length items))
      (car items)
      (last (cdr items))))



(define (square-list-my items)
	(define (iter things answer)
	  (if (null? things)
	    answer
	    (iter (cdr things)
	          (cons (square (car things)) answer))))
  (iter (reverse items) ()))