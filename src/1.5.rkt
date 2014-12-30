; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_sec_1.1.6

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

; What happens with applicative-order vs. normal-order evaluation?
(test 0 (p))
