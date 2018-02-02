#lang racket

(define (reverse n)

  (cond ((< n 10) (display ""))
        ((>= n 10) (reverse (quotient n 10))))

  (display (modulo n 10))
  (display " ")
  )

(reverse 256)