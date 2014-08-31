; LITTLE SCHEMER
(print '(little schemer!))

; ch1 function defs
(defun null? (l)
	(null l))
;(print (null? '(a b c)))

(defun atom? (x)
	(not (listp x)))

;ch2

;member = is a a member of lat?
;http://www.cis.upenn.edu/~matuszek/LispText/lisp-examples.html
;(defun member (a lat)
;	 (cond
;	  	((null lat) nil)
;	  	((eq a (car lat)) t)
;	  	(t (member a (cdr lat)))))

;redefining member the little schemer way
(defun member? (a lat)
	(cond
		((null lat) nil)
		(t (or (eq a (car lat))
				(member? a (cdr lat))))))
				
;(print (member? 2 '(1 2 3)))

;ch3

;rember = "remove member"
(defun rember (a lat)
    (cond
        ((null lat) nil)
        ((eq a (car lat)) (cdr lat))
        (t (cons (car lat) (rember a (cdr lat))))
        )
    )
;(print (rember 3 '(1 3 5 7)))

;firsts = get first element of each list in l
(defun firsts (l)
    (cond
        ((null l) '())
        (t (cons (car (car l)) (firsts (cdr l))))
        )
    )
;(print (firsts '((1 2 3) (4 5 6) (7 8 9))))

;insertR = inserts new to the right of the first occurrence of old
(defun insertR (new old lat)
    (cond
        ((null lat) '())
        ((eq old (car lat)) (cons old (cons new (cdr lat))))
        (t (cons (car lat) (insertR new old (cdr lat))))
        )
    )
(print (insertR 'zulu 4 '(1 2 3 4 6)))
