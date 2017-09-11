(define (same-parity flag . l)
	(define (is-same? n)
	  (= (remainder (abs (- n flag)) 2) 0))
	(define (iter rl result)
		(if (null? rl)
			result
			(if (is-same? (car rl))
				(iter (cdr rl) (cons (car rl) result))
				(iter (cdr rl) result)
			)
		)
	  )
  (iter l (cons flag ())))




