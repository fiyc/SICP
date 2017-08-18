;;有理数的算术运算
;;得到分子为x, 分母为y的有理数
(define (make-rat x y)
  body)

;;获得有理数x的分子
(define (numer x)
  body)

;;获得有理数x的分母
(define (denom x)
  body)

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))


(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))



(define (mul-rate x y)
  (make-rat (* (numer x) (numer y))
            (* (numer y) (numer y))))


(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

(define (equal-rate? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))