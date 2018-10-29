(defun f-l-swap (l)
   (setq last (last l))
   (setq without-last 
        (loop for el on l
                while (rest el)
                collect (first el)
        )
   )
   (return-from f-l-swap (append last (cdr without-last) (list (car l))))
)

(print (f-l-swap '(3 4 5 6 7)))