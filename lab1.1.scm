(define (x-power-n x n)
  (if (= n 0)
      1
      (* x (x-power-n x (- n 1 )))))