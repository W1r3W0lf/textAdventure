#! /usr/bin/csi -script

;;; Chicken Scheme

(import (r7rs)
        (srfi-1)
        (srfi-13)
        (srfi-69))


;;; I need to build a language to solve my problem


;;; Using alists for object data
;;; It makes things easier
(define NPC-Data
  '(
    (hp 10)
    (max-hp 100)
    ))


(define (my-test x) (* x x))
(define (test-2 x) (- x 2))

;;; Using a hash table for the global list of all objects in the game
;;; It should get quite large so speed should matter more here
(define GHT (make-hash-table))


(hash-table-set! GHT 'a 1)
(hash-table-set! GHT 'b 2)
(hash-table-set! GHT 'npc NPC-Data)

(print (hash-table-ref GHT 'a))
(print (hash-table-ref GHT 'b))
(print (hash-table-ref GHT 'npc))

(hash-table-set! GHT 'a '(12 b c))
(print (hash-table-ref GHT 'a))

(print (hash-table-exists? GHT 'c))
(print (hash-table-exists? GHT 'a))


(define-syntax run-and-set!
  ;;; Runs a function over data and saves the results of the data.
  (syntax-rules ()
    ((run-and-set! function value)
     (set! value (function value)))
    ))

(define (run-and-hash-set! table key function)
  (hash-table-set! table key (function (hash-table-ref table key))))


(define (set-alist-value key new-value alist)
  ;;; Return an alist with the updated value
  (alist-cons key (list new-value) (alist-delete key alist)))

(define (value item alist)
  ;;; Returns the value from an alist
  (cadr (assoc item alist)))

(define (alive npc)
  (> (value 'hp npc) 0))


(define Jeff
  '((name "Jeff")
    (hp 10)
    (state living)
    (saying "Hello my name is Jeff")))


(define (talk-to npc)
  (if (alive npc)
      (print (value 'saying npc))
      (print "You can't talk to them, they are dead")))


(define (attack npc)
  (if (alive npc)
      (begin
        (print (string-append "You attack " (value 'name npc)))
        (set-alist-value 'hp (- (value 'hp npc) 1) npc)
        )
      (print "You can't attack them, they are already dead")))

(define (heal npc)
  (if (alive npc)
      (begin
        (print (string-append "You heal " (value 'name npc)))
        (set-alist-value 'hp (+ (value 'hp npc) 1) npc)
        )
      (print "You can't heal them, they are dead\n")))

