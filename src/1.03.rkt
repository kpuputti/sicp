; Define a procedure that takes three numbers as arguments and returns
; the sum of the squares of the two larger numbers.
;
; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-10.html#%_sec_1.1.6

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (f x y z)
  (apply sum-of-squares
         (take (sort (list x y z) >) 2)))
