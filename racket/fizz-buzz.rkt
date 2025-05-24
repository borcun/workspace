#lang racket

(define (fizz-buzz n)
  (let ((fizz? (= 0 (remainder n 3))) (buzz? (= 0 (remainder n 5))))
  (cond ((and fizz? buzz?) (displayln "fizz-buzz"))
        (fizz? (displayln "fizz"))
        (buzz? (displayln "buzz")))))

(fizz-buzz 12)
(fizz-buzz 15)
(fizz-buzz 10)