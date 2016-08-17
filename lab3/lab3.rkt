#lang racket
; Andreas Landgrebe
; Computer Science 220
; Lab 3
; Make sure you run this in DrRacket

; 1(a) Define a symbol r with value 10, then write a one-line expression describing
; the surface area of a sphere of radius r

(define r 10)
(* 4 pi r r)

; 1(b) Using your symbol r from the previous part, write a one-line expression
; describing the volume of a sphere of radius r

(* (/ 4 3) pi r r r)

; 1(c) Definie symbols for a, b, c, and x with values 1.2, 2.3, 3.4, and -2, respectively.
; Write a one-line expression that finds the value of ax2 + bc + c.
(define a 1.2)
(define b 2.3)
(define c 3.4)
(define x -2)
(+ (* a x x) (* b x) c)

; 1(d) Define a symbol s with value "Hello, Racket." Write a one-line expression that
; defines a symbol mid equal to half the length of s, rounded down to the nearest integer.
; (Use the string-length function). Actually calculate this in your expression, don't
; just enter a constant! Display the value of mid. (just write the expression mid).

(define s "Hello, Racket")
(string-length s)
(define mid (/ (string-length s) 2))
(round mid)

; 1(e) Using the symbol s and mid that you defined previously, write a one-line
; expression using substring, string-append, and the constant string "Dr." that creates
; the string "Hello,Dr. Racket".

(string-append (substring s 0 6) "Dr." (substring s 6))

; 1(f) Use define to create a function named area that has one argument, a radius r,
; and computes the area of a sphere with radius r. Evaluate your function with r equal
; to 10, 20 and 30.

(define (area r)
  (* 4 pi r r)
  )
(area 10)
(area 20)
(area 30)

; 1(g) Use define to create a function named vol that has one argument, a raduis r,
; and computes the volume of a sphere of radius r. Evaluate your function with r equal
; to 10, 20, and 30.
(define (vol r)
  (* (/ 4 3) pi r r r)
)
(vol 10)
(vol 20)
(vol 30)

; 1(h) Use define to create a function named midpit taht has one argument a string s,
; and computer halfh the length of s, rounded down to the nearest integer.
; Evaluate your function with the strings "a string", dr. racket", and "abcde".
(define (midpt s)
  (define t (/ (string-length s) 2))
(round t)
  )
(midpt "a string")
(midpt "dr. racket")
(midpt "abcde")