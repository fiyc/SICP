;;SICP 练习2.41

;; 获取给定区间的整数序列
(define (enumerate-interval  low high)
  (if (> low high)
      ()
      (cons low (enumerate-interval (+ low 1) high))))

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))


(define (flatmap proc seq)
  (accumulate append () (map proc seq)))


(define (rm target seq)
  (remove (lambda (i) (= i target)) seq))

(define (contains? value seq)
  (cond ((null? seq) #f)
        ((= value (car seq)) #t)
        (else (contains? value (cdr seq)))))

(define (comb total seq num)
  (cond ((< total 0) ())
  	    ((and (= 1 num) (not (contains? total seq))) ())
        ((and (= 1 num) (contains? total seq)) (list (list total)))
        (else (flatmap 
                 (lambda (x) (map 
                               (lambda (p) (cons x p))
                               (comb (- total x) (rm x seq) (- num 1))))
                 seq))))

(define (combi total num)
  (comb total (enumerate-interval 1 (- total 1)) num))