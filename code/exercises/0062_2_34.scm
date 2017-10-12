;;SICP 练习2.34 累积算法求Horner规则

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))


 (define (horner-eval x coefficient-sequence)
   (accumulate (lambda (a b) 
   	             (+ a (* x b))) 0 coefficient-sequence))