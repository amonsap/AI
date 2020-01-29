(define (GCD m n)
  (cond ((= m n) m)
        ((> m n) (GCD (- m n ) n))
        (else
         (GCD m (- n m)))))

