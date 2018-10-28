(defun triangle (n)
    (cond (
        (integerp n)
            (loop for x from 1 to n
                collect (loop for y from 1 to x
                    if (> y 1)
                    do (
                        format t "~A " (write-to-string y)
                    )
                    else do (
                        print y
                    )
                )
            )
        )
        (
            (numberp n)
            (print "decimal numbers are not valid input, please enter an integer")
        )
        (
            t
            (print "strings numbers are not valid input, please enter an integer")
        )
    )
)

(triangle 5)
(triangle 2.5)
(triangle "2.5")