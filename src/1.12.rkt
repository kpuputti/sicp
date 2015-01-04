; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_sec_1.2.2

(define (num-at row col)
  (if (or (= col 0) (= col row))
      1
      (+ (num-at (- row 1) (- col 1))
         (num-at (- row 1) col))))

(define (pascal-row row)
    (map (lambda (col) (num-at row col))
         (range (+ row 1))))

(define (pascal-triangle rows)
  (map pascal-row (range rows)))
