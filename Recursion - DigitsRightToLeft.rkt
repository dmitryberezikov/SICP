#lang racket

(define (reverse n)
  (display (modulo n 10))
  (display " ")
  (cond ((< n 10) (display ""))
        ((>= n 10) (reverse (quotient n 10))))
  )

(reverse 256678)