;99 PROBLEMS
;BUT A LISP AIN'T ONE

;1
;8/?
(defun my-last (l)
	(cond
		((null l) '())
		((null (cdr l)) (car l))
		(t (my-last (cdr l)))
	))
;(print (cons 'bacon (my-last '(2 4 5 22 'bacon))))
(print (my-last '(egg and cheese)))

;2
;9/1: 0018-0025

;var declaration unnecessary
; (defun show-var ()
; 	(let ((var 123)) var))
; (print (show-var))

(defun my-but-last (l)
		(cond
			((null l) '())
			;( ( eq ((car (cdr l)) last) ) (car l)) ;problem part
			((null (cdr (cdr l))) (car l))
			(t (my-but-last (cdr l)))
		)
	)
(print (my-but-last '(1 2 3 bacon 4)))

;3
;0025-
(defun element-at (l k)
	(t l)
	)