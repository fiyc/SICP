(define (number-level n level)
  (let ((raise (apply-generic 'raise n)))
	(if (raise)
		(number-level (raise n) (+ 1 level))
		level)))



(define (apply-generic op . args)
	(let ((type-tags (map type-tag args)))
		 (let ((proc (get op type-tags))
			  (if proc
				  (apply proc (map contents args))
				  (if (= (length args) 2)
					  (let ((level1 (number-level (car args) 1))
							(level2 (number-level (cadr args)) 1))
						(cond ((= level1 level2) (apply-generic op args))
							  ((> level1 level2) (apply-generic op (raise (car args)) (cadr args)))
							  (else (apply-generic op (car args) (raise (cadr args))))))
					  (error "No method for these types"
						  (list op type-tags))))))))
