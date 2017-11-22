;element-of-set? 不变

(define (adjoin-set x set)
  (cons x set))

;union-set 不变

;intersetion-set 不变

;untion-set 复杂度为O(1) 其余与不重复的集合相同 

;不重复的集合适合做查询交集并集操作频繁的应用

;重复的集合适合做插入频繁的应用










