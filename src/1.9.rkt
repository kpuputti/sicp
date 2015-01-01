; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_sec_1.2.1

(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

(define (plus1 a b)
  (if (= a 0)
      b
      (inc (plus1 (dec a) b))))

(define (plus2 a b)
  (if (= a 0)
      b
      (plus2 (dec a) (inc b))))

; Example with the substitution model in evaluating (+ 4 5) where + is
; plus1 or plus2.

(plus1 4 5)
(+ (plus1 3 5) 1)
(+ (+ (plus1 2 5) 1) 1)
(+ (+ (+ (plus1 1 5) 1) 1) 1)
(+ (+ (+ (+ (plus1 0 5) 1) 1) 1) 1)
(+ (+ (+ (+ 5 1) 1) 1) 1)
(+ (+ (+ 6 1) 1) 1)
(+ (+ 7 1) 1)
(+ 8 1)
9

(plus2 4 5)
(plus2 3 6)
(plus2 2 7)
(plus2 1 8)
(plus2 0 9)
9

; => We see that plus1 is a linear recursive process, and plus2 is a
; linear iterative process.
