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

(defun stringToNumList (input_string)
	(if (null input_string)
		'()
		(let ((temp (list)))
			(with-input-from-string (currentChar input_string) 
				(concatenate 'list temp (list (char-code (read currentChar)) (stringToNumList (cdr input_string)))
			)
		)
	)
)