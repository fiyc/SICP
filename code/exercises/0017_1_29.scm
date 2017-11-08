;;辛普森规则求积分
(load "../demos/sum.scm")

;;h/3(y[0] + 4y[1] + 2y[2] + 4y[3] + ...+ 2y[n-2] + 4y[n-1] y[n])
;;h = (b - a)/n
;;y[k] = f(a + kh)
;;y[0] = f(a) 
;;y[1] = 4f(a + h)
;;y[2] = 2f(a + 2h)


(define (cube x)
  (* x x x))

(define (xps-intergral f n a b)
	(define (get-h)
	  (/ (- b a) n))
	(define (term-index index)
	  (cond ((or (= index 0) (= index n)) (f (+ a (* index (get-h)))))
	        ((even? index) (* 2 (f (+ a (* index (get-h))))))
	        (else (* 4 (f (+ a (* index (get-h))))))))
	(define (get-next x)
	  (+ x 1))
  (* (/ (get-h) 3.0) (sum term-index get-next 0 n)))


