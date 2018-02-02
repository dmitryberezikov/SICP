#lang racket

(define (even? n)
  (= (remainder n 2) 0))

(define (square x) (* x x))

(define (fast-expt b n)
  (mply b n 1))

(define (mply b n a)
  (cond ((= n 0) 1)
        ((= n 1) a)
        ((even? n) (mply b (/ n 2) (* a (square b))))
        (else (mply b (- n 1) (* a b)))))

(fast-expt 5 4)

#|
(define (expt b n)
  (expt-iter b n 1))

(define (expt-iter b counter product)
  (if (= counter 0)
      product
      (expt-iter b
                 (- counter 1)
                 (* b product))))
|#