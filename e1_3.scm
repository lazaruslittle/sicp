(define (sum-of-squares a b)
  (+ (* a a) (* b b)))

(define (sum-square-largest a b c)
  (cond ((and (< c a) (< c b)) (sum-of-squares a b))
	((and (< b a) (< b c)) (sum-of-squares a c))
	(else (sum-of-squares b c))))
