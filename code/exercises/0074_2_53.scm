(load "../demos/memq.scm")

(list 'a 'b 'c)
;(a b c)

(list (list 'georage))
;((georage))

(cdr '((x1 x2) (y1 y2)))
;((y1 y2))

(cadr '((x1 x2) (y1 y2)))
;(y1 y2)

(pair? (car '(a short list)))
;true

(memq 'red '((red shoes) (blue socks)))
;false

(memq 'red '(red shoes blue socks))
;(red shoes blue socks)









