(define A '(a b c d e f))
(define B '(b d f g h o))
(define (member-lst aa lst)
  (cond ((null? lst) #f)
        ((eq? aa (car lst)) #t)
        (else
         (member-lst aa (cdr lst)))))

(define (intersection ls1 ls2)
  (cond ((null? ls1) '()) 
        ((member-lst (car ls1) ls2)
         (cons (car ls1) (intersection (cdr ls1) ls2)))
        (else
         (intersection (cdr ls1) ls2))))

(define (union ls1 ls2)
  (cond ((null? ls1) ls2)
        ((member (car ls1) ls2)
         (union (cdr ls1) ls2))
        (else
         (cons (car ls1)
               (union (cdr ls1) ls2)))))
         