(defun der (y x)
    (cond
        ((atom y) (cond
                     ((equal y x) 1)
                     (T 0)
                  )
        )
    ((equal (cadr y) '+)
        (list (der(car y) x) '+ (der (caddr y) x))
    )
    ((equal (cadr y) '*)
        (list (list (car y) '* (der (caddr y) x))
               '+
              (list (der(car y) x)) '* (caddr y)
        )
    )
))
