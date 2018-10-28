; Regular Function
(defun distance (x1 y1 x2 y2)
   (return-from distance 
        (sqrt (+ (expt (- x1 x2) 2) (expt (- y1 y2) 2)))
   )
)

(print (distance 4 3 9 4.5))

; Anonymous function, more efficient on memory
(print 
    (
        (lambda (x1 y1 x2 y2)
            (sqrt (+ (expt (- x1 x2) 2) (expt (- y1 y2) 2)))
        )
        4 3 9 4.5
    )   
)
