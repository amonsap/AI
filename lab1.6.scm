(define a 100)
(define ls1 '(a b c a d a))
(define ls2 '(a b (c a d) (e a f (g h a (e f a)) m a n) o a p))
(define ls3 '(a b (c a d) a e f))
(define (reverse-ls ls)
  (cond ((null? ls) '())
        ((not (atom? (car ls)))
         (append (reverse-ls (cdr ls))
                 (list (reverse-ls (car ls)))))
        (else
         (append (reverse-ls (cdr ls))
               (list (car ls))))))

(define (delete x ls)
  (cond ((null? ls) '())
        ((eq? x (car ls))
         (delete x (cdr ls)))
        (else
         (cons (car ls)
               (delete x (cdr ls))))))

(define (delete-all x ls)
  (cond ((null? ls) '())
        ((eq? x (car ls))
         (delete-all x (cdr ls)))
        ((atom? (car ls))
         (cons (car ls)
               (delete-all x (cdr ls))))
        (else
         (cons (delete-all x (car ls))
               (delete-all x (cdr ls))))))

(define (rev-del-all x ls)
  (delete-all x (reverse-ls ls)))