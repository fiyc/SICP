(define (gcd a b)
  (if (= b 0)
	b
	(gcd b (remainder a b))))



