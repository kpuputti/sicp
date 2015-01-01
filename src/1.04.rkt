; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_sec_1.1.6

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
