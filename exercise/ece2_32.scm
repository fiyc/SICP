;;SICP 练习2.32

(define (subsets s)
  (if (null? s)
      (list ())
      (let ((rest (subsets (cdr s))))
           (append rest (map (lambda (i)
           	                    (append (list (car s)) i)) rest)))))


;;还是递归的思路
;;(A B C) 的子集集合可以分解为
;;(B C) 的子集集合  + (B C) 的子集集合追加 A