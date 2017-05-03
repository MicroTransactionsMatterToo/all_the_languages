(defn mremove [item input_list]
    (if (empty? input_list)
        '()
        (
            if (= item (first input_list))
            (recur item (rest input_list))
            (
                cons (first input_list)
                (
                    mremove item (
                        rest input_list
                        )
                    )
                )

            )
        )
    )

(defn stringToNumList [input_string]
    (if (empty? input_string) 
        '()
        (cons (int (first input_string)) (stringToNumList (rest input_string)))
    )

(defn charListToInt [input_list]
    (if (empty? input_list) 
        '()
        (cons (int (first input_list)) (charListToInt (rest input_list)))
)