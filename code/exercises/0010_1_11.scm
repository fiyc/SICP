;;SICP练习1.11
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
     	 (* 2 (f (- n 2))) 	 
     	 (* 3 (f (- n 3)))
      )
  ))

(define (f-iter b1 b2 b3 count)
	  (if (= count 0)
	      (+ b1 (* 2 b2) (* 3 b3))
	      (f-iter (+ b1 (* 2 b2) (* 3 b3))
	      		  b1
	      		  b2
	      		  (- count 1))))

(define (f2 n)
  (if (< n 3) n
      (f-iter 2 1 0 (- n 3))))


(define (is-same? n)
  (= (f n) (f2 n)))