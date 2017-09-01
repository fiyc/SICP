;; SICP 联系2.4 
;; 另一种过程性表示方法
;; 验证该方法可行

(define (cons x y)
  (lambda (m)(m x y)))

(define (car z)
  (z (lambda (p, q) p)))

(define (cdr z)
  (z (lambda (p, q) q)))

;;(car (cons x y))
;;((cons x y) (lambda (p, q) p))
;;((lambda (m) (m x y) (lambda (p, q) p)))
;;((lambda (p, q) p) x y)
;;(x)


;;(cdr (cons x y))
;;((cons x y) (lambda (p, q) q))
;;((lambda (m) (m x y) (lambda (p, q) q)))
;;((lambda (p, q) q) x y)
;;(y)