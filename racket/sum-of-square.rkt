#lang racket

(define (square x) (* x x))

(define (sum-of-square x y)
  (+ (square x) (square y)))

(sum-of-square 3 4)