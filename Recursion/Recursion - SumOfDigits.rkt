#lang racket

(define (sumnum n)
  (if (< n 10) n
      (+ (sumnum (quotient n 10)) (modulo n 10))))

(sumnum 26)
