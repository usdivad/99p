;99 PROBLEMS
;BUT A LISP AIN'T ONE

;1
(defun my-last (l)
	(cond
		((null l) nil)
		((null (cdr l)) (car l))
		(t (my-last (cdr l)))
	))
(print (cons 'bacon (my-last '(2 4 5 22 'bacon))))

;2
(defun show-var ()
	(let ((var 123)) var))
(print (show-var))

(defun my-but-last (l)
	(let ((last (my-last l)))
		(cond
			((null l) nil)
			;( ( eq ((car (cdr l)) last) ) (car l)) ;problem part
			((null (cdr l)) (car l))
			(t (my-but-last (cdr l)))
		)))
(print (my-but-last '(1 2 3 'bacon 4)))
