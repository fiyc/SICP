;;SICP 练习1.19
;;验证T(p, q, a, b): 
;;	a1 = bq + aq + ap = bq + a(p + q)
;;  b1 = bp + aq
;;T(p, q, bq + aq + ap, bp + aq)
;; a2 = b1q + a1(p + q)
;;	  = (bp + aq)q + (bq + a(p + q))(p + q)
;;	  = bpq + aqq + bpq + ap(p + q) + bqq + aq(p + q)
;;	  = bpq + aqq + bpq + app + apq + bqq + apq + aqq
;;	  = 2bpq + 2aqq + app + 2apq + bqq
;;    = 2bpq + bqq + (2aqq + app + 2apq)
;;	  = 2bpq + bqq + a(2qq + pp + 2pq)
;;	  = 2bpq + bqq + a(qq + (qq+ pp + 2pq))
;;	  = b(2pq + q^2) + a(qq + (qq+ pp + 2pq))


;;s1 = bq` + a(p` + q`)


;; q` = q^2 + 2qp
;; p` = p^2 + q^2

;;若p=0, q=1
;;则p`= 1, q` = 2

