;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname Taller5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;;====================================
;Taller 5.0
;Recursividad en Dr Racket
;feedback:hfjimenez@utp.edu.co 
;UTP.20152 ISC
;====================================
(display "
\n============================================
\t.:::Taller 5.0:::.
 Recursividad
 feedback:hfjimenez@utp.edu.co 
\t\tUTP.20152 ISC
Repositorio:https://github.com/heticor915/IS105UTP
=============================================== " )
;1 Hacer un programa que muestre por pantalla 10 veces el 
;mensaje de texto “hola”.
;Ejercicio 1

(define (msghola texto contadorini)
  (if (<= contadorini 10) 
      (begin
        (display texto)
        (newline)
        (msghola texto (+ contadorini 1))
        )
      (display "fin\n")
   ) 
)
(display "EJERCICIO 1\n")
(msghola "Hola" 1)
(display "")
;2.El mismo programa anterior pero mostrando el mensaje n veces.
;Ejercicio2

(define (msg2 texto contadorini nveces)
  (if (<= contadorini nveces) 
      (begin
        (display texto)
        (newline)
        (msg2 texto (+ contadorini 1) nveces)
        )
      (display "fin\n")
   ) 
)

(display "\nEJERCICIO 2\n")
(display "Ingrese la Cantidad nVeces a repetir Hola")
(msg2 "Hola" 1 (read))

;Ejercicio3
;Hacer un programa que escriba los primeros N números enteros
(define (primerosn contadori n)  
  (if (<= contadori n )
      (begin 
        (display  contadori)
        (newline)
        (primerosn (+ contadori 1) n)
        )
      (display "EOF")
      )
  )
(primerosn 1 50)

;Ejercicio 4 
;Hacer una función que muestre la tabla de multiplicar
;de un número N

(define (tablas n i)
  (if(<= i 10)
     (begin
       (display n)
       (display "*")
       (display i)
       (display "=")
       (display (* n i))
       (display "\n")
       (tablas n (+ i 1))
     )
     (display "EOF")
   )
 )

(display "\nEJERCICIO 4\n")
(display "\nTablas de Multiplicar de n, n*1 hasta 10\n")
(display "Ingrese El N de Tabla de Multiplicar: ")
(tablas  (read) 1)


(define (tablas2 n j i); para este ejercicio la tabla es j*i=valor, donde j e i son contadores.
  (if (<= j n)
      (if(<= i 10)
         (begin
           (display n)
           (display "*")
           (display j)
           (display "=")
           (display (* j i))
           (display "\n")
           (tablas2 n j (+ i 1))           
           )
         (tablas2 n (+ j 1) i)
              )
      (display "EOF")
  )
)

(display "\nEJERCICIO 5\n")
(display "\nTablas de Multiplicar hasta n\n")
(display "Ingrese El N para mostrar esas Tablas de Multiplicar: ")
(tablas2  (read) 1 1 )