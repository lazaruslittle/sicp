(define (newguess guess x)
  (/ (+ (/ x (expt guess 2)) (* 2 guess)) 3))

(define (good-enough? guess oldguess x)
  (< (abs (- guess oldguess)) (* x 0.001)))

(define (qrt-iter guess oldguess x)
  (if (good-enough? guess oldguess x)
      guess
      (qrt-iter (newguess guess x) guess x)))
