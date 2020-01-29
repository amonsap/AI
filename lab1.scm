(define (factorial-1 n) ; MIT style
  (if (= n 1)
      1
      (* n (factorial-1 (- n 1)))))
(define factorial-2 ; Indiana style
  (lambda (n)
          (if (= n 1)
              1
              (* n (factorial-2 (- n 1))))))