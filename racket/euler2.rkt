#lang racket

(define problem-limit 4000000)

(define (fib n)
  (cond ((= 1 n) 1)
        ((= 2 n) 1)
        (else (+ (fib (- n 1)) (fib (- n 2))))))


;; since no requirement for a function that has same return type for its each case
;; designing a function with multiple different return cases is possible.
;; for the following case, the function returns 0, calls exit, call itself as-is and
;; with addition operator, so another integer.
(define (even-fib n)
  (if (= 0 n)
      0
      (let ((res (fib n)))
        (if (> n problem-limit)
            (exit)
            (if (odd? res)
                (even-fib (- n 1))
                (+ (even-fib (- n 1)) res))))))

(even-fib 33)