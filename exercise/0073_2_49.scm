;;SICP 练习2.49
(load "0072_2_48.scm")

(define (segments->painter segment-list)
  (lambda (frame) 
    (for-each 
      (lambda (segment)
        (draw-line
          ((frame-coord-map frame) (start-segment segment))
          ((frame-coord-map frame) (end-segment segment))))
      segment-list)))


;;定义向量
(define vect-orign (make-vect 0 0))
(define vect-tl (make-vect 0 1))
(define vect-tr (make-vect 1 1))
(define vect-br (make-vect 1 0))


;;由向量定义线段
(define left (make-segment vect-orign vect-tl))
(define top (make-segment vect-tl vect-tr))
(define right (make-segment vect-tr vect-br))
(define buttom (make-segment vect-orign vect-br))


;画出给的框架边界的画家
(segments->painter (list left top right buttom))

;通过连接框架两对角画出一个大叉子的画家
;;原点到对角线段
(define ort (make-segment vect-orign vect-tr))
;;左上点到右下点线段
(define rlbr (make-segment vect-tl vect-br))
(segments->painter (list ort rlbr))


;通过连接框架各边的中点画出一个菱形的画家
;定义四个中点向量
(define c-left (scale-vect vect-tl 0.5))
(define c-top (scale-vect (sub-vect vect-tr vect-tl) 0.5))
(define c-right (scale-vect (sub-vect vect-tr vect-br) 0.5))
(define c-buttom (scale-vect vect-br 0.5))

;;由向量定义线段
(define a (make-segment c-left c-top))
(define b (make-segment c-left c-buttom))
(define c (make-segment c-top c-right))
(define d (make-segment c-buttom c-right))

(segments->painter (list a b c d))






