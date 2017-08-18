;;SICP 练习1.30 sum方法由递归转迭代
;;递归sum
(define (sum term next a b)
  (if (> a b)
       0
       (+ (term a)
          (sum term next (next a) b))))


;;迭代sum
(define (new-sum term next a b)
	(define (iter a result)
	  (if (> a b)
	  	  result
	      (iter (next a) (+ result (term a)))))
  (iter a 0))

(define (cube x)
  (* x x))

(define (next a)
  (+ a 1))

(define (test a b)
  (= (sum cube next a b) (new-sum cube next a b)))


