;;SICP 牛顿法
;;描述导数的概念

(define (deriv g)
	(define dx 0.00001)
  (lambda (x) (/ (- (g (+ x dx)) (g x)) dx)))


  (define (cube x)
    (* x x x))