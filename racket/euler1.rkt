#lang racket

(define (divide-by-three-or-five n)
  (if (or (= 0 (remainder n 3)) (= 0 (remainder n 5))) n 0))

(define (accumulate n)
  (if (= 0 n)
      0
      (+ (accumulate (- n 1)) (divide-by-three-or-five n))))

(accumulate 999)