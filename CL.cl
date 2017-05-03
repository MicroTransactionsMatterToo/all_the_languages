(defun mremove (item input_list)
	(if (null input_list)
		'()
		(
			if (eq item (car input_list))
			(mremove item (cdr input_list))
			(
				cons (car input_list)
				(
					mremove item (
						cdr input_list
						)
					)
				)

			)
		)
	)

(defun string-to-list (s)
	(assert (stringp s) (s))
	(coerce s 'list))

(defun stringToNumList (input_string)
	(if (null input_string)
		'()
		(if (eq (type-of input_string) 'cons) 
			(cons (char-code (car input_string)) (stringToNumList (cdr input_string)))
			(stringToNumList (string-to-list input_string))
			)
		)
	)

(defun charListToInt (input_list) (
	if (null input_list)
	'()
	(cons (char-code (car input_list)) (charListToInt (cdr input_list)))	)
)