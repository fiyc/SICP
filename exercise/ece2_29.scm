;;SICP 练习2.29  

(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

;;a> 定义left-branch, right-branch
(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (car (cdr mobile)))

;;a> 定义branch-length, branch-structure
(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (car (cdr branch)))

;;PS 这里网上看了别人写的练习   (car (cdr branch))   可以写成 (cadr branch) 呵呵


;;b> 定义total-weight
(define (total-weight mobile)
	(define (iter-weght branch)
	  (if (pair? (branch-structure branch))
	    (total-weight branch)
	    (branch-structure branch)))
  (+ (iter-weght (left-branch mobile)) (iter-weght (right-branch mobile))))


;;c> 验证活动体是否平衡
(define (branch-weight branch)
  (if (pair? (branch-structure branch))
    (total-weight branch)
    (branch-structure branch)))

(define (branch-power branch)
  (* (branch-length branch)
     (branch-weight branch)))

(define (balance? mobile)
	(define (iter-balance? iter_mobile)
	  (if (not (= (branch-power (left-branch iter_mobile))
	              (branch-power (right-branch iter_mobile))))
	    #f
	    (and (balance? (left-branch iter_mobile)) 
	         (balance? (right-branch iter_mobile)))))
  (if (pair? (branch-structure mobile))
    (iter-balance? mobile)
    #t))


;;d> 修改a中定义的选择函数 
(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cdr mobile))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (cdr branch))