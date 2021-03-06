;加减乘除
(define (add-complex z1 z2)
	(make-from-real-imag (+ (real-part z1) (real-part z2))
											 (+ (imag-part z1) (imag-part z2))))

(define (sub-complex z1 z2)
	(make-from-real-imag (- (real-part z1) (real-part z2))
											 (- (imag-part z1) (imag-part z2))))

(define (mul-complex z1 z2)
	(make-from-mag-ang (* (magnitude z1) (magnitude z2))
										 (+ (angle z1) (angle z2))))

(define (div-complex z1 z2)
	(make-from-mag-ang (/ (magnitude z1) (magnitude z2))
										 (- (angle z1) (angle z2))))


;直角坐标形式的复数
(define make-from-real-imag cons)

(define (make-from-mag-ang r a)
	(cons (* r (cos a)) (* r (sin a))))

(define real-part car)

(define imag-part cdr)

(define (magnitude z)
	(sqrt (+ (square (real-part z)) (square (imag-part z)))))

(define (angle z)
	(atan (imag-part z) (real-part z)))

;极坐标形式的复数
(define (make-from-real-imag x y)
	(cons (sqrt (+ (square x) (square y)))
				(atan y x)))

(define make-from-mag-ang cons)

(define (real-part z)
	(* (magnitude z) (cos (angle z))))

(define (imag-part z)
	(* (magnitude z) (sin (angle z))))

(define angle cdr)

(define magnitude car)


 











