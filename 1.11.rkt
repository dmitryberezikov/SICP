#lang sicp

#|-------Рекурсивный процесс-------|#
(define (f n)
  (if (< n 3)
        n
        (+ (f (- n 1)) (f (- n 2)) (f (- n 3)))))

(f 12)
#|---------------------------------|#



#|-------Итеративный процесс-------|#
(define (fib n)
  (fib-iter 2 1 0 n))

(define (fib-iter a b c count)
  (if (= count 0)
      c
      (fib-iter (+ a b c) a b (- count 1))))

(fib 12)