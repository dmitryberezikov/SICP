#lang sicp

(define (a m n)
  (cond ((= m 0) (+ n 1))
        ((and (> m 0) (= n 0)) (a (- m 1) 1))
        ((and (> m 0) (> n 0)) (a ( - m 1) (a m (- n 1))))))

(a 3 3)
        