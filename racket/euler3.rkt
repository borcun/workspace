#lang racket

(require math/number-theory)

;;(define number 600851475143)
(define number 13195)
;;(define number 33)

(define (largest-prime-factor n)
  (if (>= 0 n)
      "could not found"
      (if (and (divides? n number) (prime? n))
          n
          (largest-prime-factor (- n 1)))))

(largest-prime-factor (floor (/ number 2)))
