#lang racket

(require(lib "graphics.ss" "graphics")) 

(open-graphics)

;-----------------------------------------------------------
(define ventana (open-viewport "ventana" 800 500))
;-----
((draw-viewport ventana) "aquamarine")

(define ventana2 (open-pixmap "ejemplo" 800 500))
;;dibujamos la imagen a.png
((draw-pixmap ventana2) "fondo.jpg" (make-posn 0.0 0.0) "black")
;;copiamos el contenido de una ventana a otra
(copy-viewport ventana2 ventana)


;::::::::::::::::::::::::::::::::::::::::::::::::::::::
(define (nave posx posy lad)
;------- 
  (cond 
    
    ;[(or (<= posx 10) (>= posx 800))  ]
    
    [(equal? lad 'l) 
        ((draw-solid-rectangle ventana)
        (make-posn posx posy)10 10 "red"  ) ]
   
    [(equal? lad 'r)
       ((flip-ellipse ventana)(make-posn posx posy) 10 10 "black" )]
;else
   [else (void)]
    
     )
   )

;::::::::::::::::::::::::::::::::::::::::::::::::::
(define (teclado posx posy press)

 (cond
    [(and (>= posx 20) (equal? press 'left))
     (begin
      (nave posx posy 'l)
      (teclado(- posx 10) posy (key-value (get-key-press ventana)) ))]
    
    [(and (<= posx 780)(equal? press 'right))
     (begin
      (nave posx posy 'r)
      (teclado (+ posx 10) posy (key-value (get-key-press ventana)) ))]
   
;else
    [else (teclado  posx posy (key-value (get-key-press ventana)) )]
  
  )
) 

;:::::::::::::::::::::::::::::::::::::::::::::::::::::
;Prueba
(teclado 350 440 10)
;(teclado COORDENADA-EN-X COORDENADA-EN-Y NO-SE)