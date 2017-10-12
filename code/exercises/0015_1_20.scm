;;SICP 练习1.20 
;;算出remainder运算在(gcd 206 40) 中实际的运算次数, 分正则式与应用式

;;若a < b 执行1次结束, 否则执行 a/b + 1次
(define (re a b)
  (if (< a b)
      a
      (re (- a b) b)))


(define (gcd x y)
  (if (= y 0)
      x
      (gcd y (re x y))))


;;(gcd 206 40)
;;if(= 40 0) 206 (gcd 40 (re 206 40))
;;if(= 40 0) 206 (gcd 40 (re 206 40))
