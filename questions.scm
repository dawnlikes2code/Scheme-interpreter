(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cadar x) (car (cdr (car x))))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

;; Problem 13
;; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 13
  (define (helper lst index)
    (if (null? lst)
        '()
        (cons (list index (car lst))
              (helper (cdr lst) (+ index 1)))))
  (helper s 0)
  ; END PROBLEM 13
)


;; Problem 14

;; Return the value for a key in a dictionary list
(define (get dict key)
  ; BEGIN PROBLEM 14
  'replace-this-line
  ; END PROBLEM 14
  )

;; Return a dictionary list with a (key value) pair
(define (set dict key val)
  ; BEGIN PROBLEM 14
  'replace-this-line
  ; END PROBLEM 14
  )

;; Problem 15

;; implement solution-code
(define (solution-code problem solution)
  ; BEGIN PROBLEM 15
  (define (enumerate lst)
  (define (helper lst index)
    (if (null? lst)
        '()
        (cons (list index (car lst))
              (helper (cdr lst) (+ index 1)))))
  (helper lst 0))
  ; END PROBLEM 15
  )
;; Problem 16
(define (merge ordered? lst1 lst2)
  ; BEGIN PROBLEM 16
  (cond
    ((null? lst1) lst2)                         ; if the first list is empty
    ((null? lst2) lst1)                         ; if the second list is empty
    ((ordered? (car lst1) (car lst2))          ; if (car lst1) comes first
     (cons (car lst1)
           (merge ordered? (cdr lst1) lst2)))
    (else                                       ; otherwise (car lst2) comes first
     (cons (car lst2)
           (merge ordered? lst1 (cdr lst2)))))
  ; END PROBLEM 16
)
