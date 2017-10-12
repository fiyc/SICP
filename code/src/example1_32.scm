;;lambda的使用
;;(lambda (<formal-parameters>) body)
(lambda (x) (+ x 4))
;;例子函数
;;f(x, y) = x(1 + xy)^2 + y(1 - y) + (1 + xy)(1 - y)
;;a = 1 + xy
;;b = 1 - y
;;f(x, y) = xa^2 + yb + ab
;;将a b作为局部变量

;;方法一， 利用辅助过程约束局部变量

(define (f x y)
	(define (f-helper a b)
	  (+ (* x (square a))
	     (* y b) 
	     (* a b)))
  (f-helper (+ 1 (* x y))
            (- 1 y)))


;;方法二, 使用lambda约束局部变量
(define (f-lambda x y)
	((lambda (a b) 
		(+ (* x (square a))
	     (* y b) 
	     (* a b)))
	(+ 1 (* x y))
  (- 1 y)))


;;方法三， 使用let
;;let 表达式一般形式
;(let ((<var1> <exp1>)
;	  (<var2> <exp2>)
;	  (<var3> <exp3>)
;	  ...
;	  (<var4> <exp4>))
;	<body>)
;
;;let的lambda变形
;((lambda (<var1> <var2> ... <varn>) 
;	<body>) 
;    <exp1> 
;	<exp2> 
;	... 
;	<expn>)


(define (f-let x y)
  (let ((a (+ 1
              (* x y)))
        (b (- 1 y)))
   (+ (* x (square a))
      (* y b)
      (* a b))))
