#lang sicp

#| Длинный вариант

(define (atob a b)
  (cond ((< a b) (straightrecursion a b))
        ((> a b) (reverserecursion a b))
  )
)

(define (straightrecursion x y)
  (cond ((= y x))
        ((> y x) (straightrecursion x (- y 1))))
  (write y))

(define (reverserecursion x y)
  (cond ((= y x))
        ((< y x) (reverserecursion x (+ y 1))))
  (write y))

(atob 8 4)
|#

#|-------------------------------------------------|#

#| Короткий вариант |#

(define (atob a b)
  (if (< a b)
      (recursion a b > -)
      (recursion a b < +)
  )
)

(define (recursion x y conc direction)
  (cond ((= y x))
        ((conc y x) (recursion x (direction y 1) conc direction)))
  (write y))

(atob 8 2)