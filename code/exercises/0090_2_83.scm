(define (install-number-raise)
  (put 'raise '(scheme-number)
	   (lambda (x) (make-rat x 1)))

  (put 'raise '(rational)
	   (lambda (x) (make-from-real-imag x 0)))
  'done)
