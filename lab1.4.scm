(define (fibo n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else
         (+ (fibo (- n 1 ))
            (fibo (- n 2 ))))))

(define (hanoi-tower n A B C)
  (if(> n 0)
     (begin
       (hanoi-tower (- n 1) A C B)
       (display "Move a disc from ")
       (display A)
       (display "to")
       (display C)
       (newline)
       (hanoi-tower (- n 1) B A C))))