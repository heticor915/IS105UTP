;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname cuadratica3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

(define (cuadratica a b c)
  (begin
    (display "\n:::Calculo de Cuadratica :::\n")
    (display "x1: ")
    (display (/ (+ (- b) ( sqrt (- (expt b 2) (* 4 a c)) )) (* 2 a)) )
    (display "\nx2: ")
    (display(/ (- (- b) ( sqrt (- (expt b 2) (* 4 a c)) )) (* 2 a)) )
    
    )
)
(display "\nIngrese Valores Cuadratica:")

(define a(read))
(define b(read))
(define c(read))

(cuadratica a b c)
;Esto tambien podria ser hecho:
;(cuadratica (read) (read) (read) )