; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_sec_1.2.2

; n < 3,  f(n) = n
; n >= 3, f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3)

(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1))
         (* 2 (f-recursive (- n 2)))
         (* 3 (f-recursive (- n 3))))))

(define (f-iterative-iter prev1 prev2 prev3 count)
  (let ((current (+ prev1 (* 2 prev2) (* 3 prev3))))
    (if (= count 0)
      current
      (f-iterative-iter current prev1 prev2 (- count 1)))))

(define (f-iterative n)
  (if (< n 3)
      n
      (f-iterative-iter 2 1 0 (- n 3))))
