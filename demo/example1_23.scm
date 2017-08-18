;;换零钱问题
;;将总数金额a 换成n种硬币的不同的数目等于
;;将现金数a换成除第一种硬币之外的所有硬币的不同方式数目，加上
;;将现金数 a - d 换成所有种类的硬币的不同方式数目, d为第一种硬币的面值

(define (count-change amount)
  (cc amount 5))

(define (cc amount coins-type)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= coins-type 0)) 0)
    	(else (+ (cc amount (- coins-type 1)) 
    			 (cc (- amount (coins-value coins-type)) coins-type))

    	)
  )
)

(define (coins-value coins-type)
  (cond ((= coins-type 1) 1)
        ((= coins-type 2) 5)
        ((= coins-type 3) 10)
    	((= coins-type 4) 25)
    	((= coins-type 5) 50)))


