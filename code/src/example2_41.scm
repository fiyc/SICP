;; 图像问题 

(define (flipped-pairs painter)
  (let ((painter2 (beside painter (flip-vert painter))))
       (below painter2 painter2)))

(define (square-limit painter n)
  (let ((quarter (corner-split painter n)))
       (let ((half (beside (flip-horiz quarter) quarter)))
            (below (flip-vert half) half))))


(define (square-of-four tl tr bl br)
  (lambda (painter) 
    (let ((top (beside (tl painter) (tr painter)))
          (bottom (beside (bl painter) (br painter))))
         (below bottom top))))


;;使用square-of-four 定义 flipped-pairs
(define flipped-pairs (square-of-four identity flip-vert identity flip-vert))

;;使用square-of-four 定义 square-limit
(define square-limit (square-of-four identity flip-horiz flip-vert rotate180))