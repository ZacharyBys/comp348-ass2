(defun deduplicate (l)
   (let ((newList '()))
        (loop for el in l
            do (
                cond
                (
                    (listp el)
                    (loop for x in el
                        do (
                            unless (member x newList)
                                (
                                    unless (numberp x)
                                        (push x newList)
                                )
                        )
                    )
                )
                (
                    (not (member el newList))
                    (
                        unless (numberp el)
                            (push el newList)
                    )
                )
            )  
        )
        (return-from deduplicate newList)
   )
)

(print (deduplicate '((z f) (b a 5 3.5) 6 (7) (a) c) ))
(print (deduplicate '( (n) 2 (6 h 7.8) (w f) (n) (c) n)))