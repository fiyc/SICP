;;SICP 练习2.33 填充表达式, 完成累积定义
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))



(define (map-n p sequence)
  (accumulate (lambda (x y)
  	            (cons (p x) y)) () sequence))

(define (append-n seq1 seq2)
  (accumulate cons seq1 seq2))


(define (length-n sequence)
  (accumulate (lambda (x y)
  	            (+ 1 y)) 0 sequence))
