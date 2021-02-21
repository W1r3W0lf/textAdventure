#! /usr/bin/csi -script

(import (r7rs)
        (srfi-1)
        (srfi-13))


;;; General use functions

(define (in item list)
  ;;; Tells you if an item is in a list or not
  (cond ((member item list) #t) (else #f)))

(define (neq? x y)
  ;;; Not Equal. Short hand
  (not (eq? x y)))

;;; I need to build a language to solve my problem


(define (get_raw_command)
  ;;; Gets the command from stdin and breaks it up into a list
  (string-tokenize (string-downcase (read-line))))


(define (filter_command command filter_list)
  ;;; Removes all words in the command that are not in the filter list. Preserves order of remaining words.
  (filter
   (lambda (x)
     (in x filter_list))
   command))

(define (run_user_command_old command)
  (apply (eval (string->symbol (car command))) (cdr command)))

(define (run_user_command1 command)
  (map (lambda (x) (apply (eval (string->symbol x)) '())) command))

(define (run_user_command command)
  (eval (map string->symbol command)))

(define (one) "Oh well hello there")

(define (two)
  (print "This seems to work"))

(define (test a)
  (print (apply(eval (string->symbol a)) '())))

(define npc
  (let ((happyness 0))
    (lambda () (set! happyness (+ happyness 1)) happyness)))

(define (main args)
  (print "test"))


;(print (filter_command (get_raw_command) '("michael" "i" "see" "here")))

;(run_user_command (get_raw_command))

;(eval (read))


(define (repl)
  (let ((input (read)))
    (when (not (eq? input 'exit))
      (print (eval input))
      (repl))))

(define (repl2)
  (let ((input (read)))
    (when (not (eq? input 'exit))
      (eval input)
      (repl2))))


(define filter_list
  ;;; The list of acceptable inputs from the user
  '(print one two))


(define (repl3)
  (let ((input (filter_command (read) filter_list)))
    (when (not (eq? input 'exit))
      (eval input)
      (repl3))))

(define (repl4)
  (let ((input (filter_command (map string->symbol (get_raw_command)) filter_list)))
    (when (not (eq? input 'exit))
      (run_command input)
      (repl4))))

(define (run_command command)
  ;;; Run the users command.
  ;;; In a regular language this would have a switch statement that would enumerate each command and call them.
  ;;; But because this is Scheme I can just run the user's command directly in the environment.
  (if (> (length command) 0)
      (eval command)
      (print "Ooops Hans no bullets")))

(repl4)
