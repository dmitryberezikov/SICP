#lang sicp


(define (f n)
  
  (cond ((= n 1))
        ((> n 1) (f (- n 1))))

  (write n)
)

(f 5)

        
