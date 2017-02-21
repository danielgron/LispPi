
;;
;; Preamble: Lisp prerequisits
;;

;; These two lines sets the number of binary digits used to represent a float
;; in Lisp. This is necessary because you'll be working with tiny numbers
;; TL;DR ignore these two lines
(setf (EXT:LONG-FLOAT-DIGITS) 35000)
(setf *read-default-float-format* 'long-float)

;; This method rounds a number to a certain precision
;; It takes two arguments: the number to round and the number of digits to
;; round in decimals
;;
;; Example: (roundToPrecision 10.0044 3) -> 10.004
(defun roundToPrecision (number precision)
  (let
    ((p (expt 10 precision)))
    (/ (round (* number p)) p)
  )
)
;;(write "Hello")
(write (roundToPrecision 10.0034 3))
;;
;; Exercise
;;


;(aNext a b)
(defun aNext(a b)
( / (+ a b) 2)
)

(defun bNext(a b)
(sqrt(* a b)
)
)

(defun tNext(tn p a b)
(- tn (* p(expt (- a (aNext a b)) 2))
)
)
(defun pNext(p)
(* 2 p)
)



(defun pi(a b tn p piOld)
(let(
(aN ( / (+ a b) 2))

(bN (bNext a b))

(tNew (tNext tn p a b))

(pNew (pNext p))


)
(let ((piNew (roundToPrecision (/ (expt (+ aN bN) 2) (* 4 tNew)) 15)))

(if (= piOld piNew)(write piOld)(pi aN bN tNew p piNew)
)
)


))

(pi 1 (/ 1 (sqrt 2)) (/ 1 4) 1 1)



;(write (aNext 2 50)) ;26
;(write(bNext 2 50)) ;10
;(write(tNext 100 2 10 2)) ;68?
;(write(/ 1 (sqrt 2)))
;; Exercise
;; Your task is to implement the Gauss-Legendre algorithm for calculating pi
;; and extract 10.000 (ten thousand) digits

;; Gauss-Legendre algorithm on Wikipedia
;; https://en.wikipedia.org/wiki/Gauss%E2%80%93Legendre_algorithm
