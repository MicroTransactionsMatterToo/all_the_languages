#lang racket
(define (remove item input_list)
  (if (null? input_list)
      '()
      (if (eqv? item (car input_list))
          (remove item (cdr input_list))
          (cons (car input_list)
                (remove item (cdr input_list)))
          )
      )
  )


(define (stringToNumList input)
  (if (null? input)
      '()
       (let ([temp (string->list input)])
         (let ([temp (remove #\space temp)]) (remove #\space temp)
           (let ([output '()]) (list output)
             (if (null? temp) '()
                  (append output (charListToInt temp))

                )
             )
           )
         )
       )
  )


(define (charListToInt input)
  (if (null? input) '()
       (cons (char->integer (car input))
              (charListToInt (cdr input))
              )
      )
  )