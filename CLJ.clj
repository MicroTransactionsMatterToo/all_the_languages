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