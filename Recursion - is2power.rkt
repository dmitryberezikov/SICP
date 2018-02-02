#lang racket


(define (main n)
  (twopower 1 n))

(define (twopower m n)
  (cond ((= (* m 2) n) (print "YES"))
        ((< (* m 2) n) (twopower (* m 2) n))
        ((> (* m 2) n) (print "NO"))))

(main 15)