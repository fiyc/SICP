
(define (variable? x) (symbol? x))

(define (same-variable? v1 v2)
	(and (variable? v1) (variable? v2) (eq? v1 v2)))

(define (make-sum-old a1 a2) (list '+ a1 a2))
(define (make-product-old m1 m2) (list '* m1 m2))

(define (sum? x)
	(and (pair? x) (eq? (car x) '+)))

(define (addend s) (cadr s))

(define (augend s)
  (if (> (length s) 3)
	  (append (list '+) (cddr s))
	  (caddr s)))

(define (product? x)
	(and (pair? x) (eq? (car x) '*)))



(define (multiplier p) (cadr p))


(define (multiplicand p)
  (if (> (length p) 3)
	  (append (list '*) (cddr p))
	  (caddr p)))


(define (=number? exp num)
	(and (number? exp) (= exp num)))

(define (make-sum a1 a2)
	(cond ((=number? a1 0) a2)
	      ((=number? a2 0) a1)
		  ((and (number? a1) (number? a2)) (+ a1 a2))
		  (else (list '+ a1 a2))))
		  
(define (make-product m1 m2)
	(cond ((or (=number? m1 0) (=number? m2 0)) 0)
	      ((=number? m1 1) m2)
		  ((=number? m2 1) m1)
		  ((and (number? m1) (number? m2)) (* m1 m2))
		  (else (list '* m1 m2))))

(define (exponentiation? x)
  (and (pair? x) (eq? (car x) '**)))

(define (exp-base x) (cadr x))

(define (exp-exponent x) (caddr x))

(define (make-exponentiation base exponent)
  (cond ((< exponent 0) (error "unsupport" exponent))
		((= exponent 0) 1)
		((= exponent 1) base)
		(else (list '** base exponent))))


(define (make-deriv-exponentiation exp)
  (cond ((< (exp-exponent exp) 0)
		 (error "unsupport" exp))
		((= (exp-exponent exp) 0) 1)
		(else (make-sum 0
			(make-product (exp-exponent exp)
				(make-exponentiation (exp-base exp)
									 (- (exp-exponent exp) 1)))))))


(define (deriv exp var)
	(cond ((number? exp) 0)
		  ((variable? exp)
			  (if (same-variable? exp var) 1 0))
		  ((sum? exp)
			  (make-sum (deriv (addend exp) var)
			            (deriv (augend exp) var)))
		  ((product? exp)
			  (make-sum (make-product (multiplier exp)
			                          (deriv (multiplicand exp) var))
			            (make-product (deriv (multiplier exp) var)
						              (multiplicand exp))))
		  ((exponentiation? exp)
		      (make-deriv-exponentiation exp))
		  (else (error "unknown expression type -- DERIV" exp))))


(define t1 '(+ x 3))
(define t2 '(+ (* a (* x x)) (* b x) c))
(define t3 '(+ (* a (** x 2)) (* b x) c))
(define t4 '(* x y (+ x 3)))
