; http://mitpress.mit.edu/sicp/full-text/book/book-Z-H-11.html#%_sec_1.2.3

(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

; a) Evaluating (sine 12.15)
(sine 12.15)
(p (sine (/ 12.15 3.0)))
(p (sine 4.05))
(p (p (sine (/ 4.05 3.0))))
(p (p (sine 1.3499999999999999)))
(p (p (p (sine (/ 1.3499999999999999 3.0)))))
(p (p (p (sine 0.44999999999999996))))
(p (p (p (p (sine (/ 0.44999999999999996 3.0))))))
(p (p (p (p (sine 0.15)))))
(p (p (p (p (p (sine (/ 0.15 3.0)))))))
(p (p (p (p (p (sine 0.049999999999999996))))))
(p (p (p (p (p 0.049999999999999996)))))
(p (p (p (p 0.1495))))
(p (p (p 0.4351345505)))
(p (p 0.9758465331678772))
(p -0.7895631144708228)
-0.39980345741334

; => p is evaluated 5 times.

; b) The angle is divided by 3.0 until it is at or below 0.1 and there
; is a single tail call. Therefore, order of growth in both space and
; number of steps is O(log n).
