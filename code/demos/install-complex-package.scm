(define (install-complex-package)
  ;; import choice procedures from rectangular and polar
  (define real-part-rectangular car)
  (define imag-part-ractangular cdr)
  (define (magnitude-ractangular z)
	(sqrt (+ (square (car z))
			 (square (cdr z)))))
  (define (angle-ractangular z)
	(atan (/ (cdr z) (car z))))

  (define (real-part-polar z)
	(* (car z)
	   (cos (cdr z))))

  (define (imag-part-polor z)
	(* (car z)
	   (sin (cdr z))))

  (define magnitude-polor car)

  (define angle-polor cdr)

  (put 'real-part 'rectangular real-part-rectangular)
  (put 'imag-part 'rectangular imag-part-rectangular)
  (put 'magnitude 'rectangular magnitude-rectangular)
  (put 'angle 'rectangular angle-rectangular)

  (put 'real-part 'polar real-part-polar)
  (put 'imag-part 'polar imag-part-polar)
  (put 'magnitude 'polar magnitude-polar)
  (put 'angle 'polar angle-polar)

  ;;imported procedures from rectangular and polar packages
	(define (make-from-real-imag x y)
		((get 'make-from-real-imag 'rectangular) x y))

	(define (make-from-mag-ang r a)
		((get 'make-from-mag-ang 'polar) r a))

	;;internal procedures
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

	;;interface to rest of the system
	(define (tag z) (attach-tag 'complex z))
	(put 'add '(complex complex)
			 (lambda (z1 z2) (tag (add-complex z1 z2))))

	(put 'sub '(complex complex)
			 (lambda (z1 z2) (tag (sub-complex z1 z2))))

	(put 'mul '(complex complex)
			 (lambda (z1 z2) (tag (mul-complex z1 z2))))

	(put 'div '(complex complex)
			 (lambda (z1 z2) (tag (div-complex z1 z2))))
	(put 'make-from-mag-ang 'complex
		 (lambda (r a) (tag (make-from-mag-ang r a))))
	(put 'equ? '(complex complex)
		 (lambda (z1 z2)
		   (and (= (real-part z1) (real-part z2))
				(= (imag-part z1) (imag-part z2)))))
	(put '=zero? 'complex
		 (lambda (z)
		   (and (= (real-part z) 0)
				(= (imag-part z) 0))))
	'done)
