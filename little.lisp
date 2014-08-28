; LITTLE SCHEMER
; ch1 function defs
(defun null? (l)
	(null l))
(print (null? '(a b c)))

(defun atom? (x)
	(not (listp x)))

;ch2

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
