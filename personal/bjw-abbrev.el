;; -*- coding: utf-8; lexical-binding: t; -*-
;; sample use of abbrev

(clear-abbrev-table global-abbrev-table)

(define-abbrev-table 'global-abbrev-table
  '(

    ;; net abbrev
    ("afaik" "as far as i know" )
    ("atm" "at the moment" )
    ("dfb" "difference between" )
    ("ty" "thank you" )
    ("ur" "you are" )
    ("btw" "by the way" )

    ("cnt" "can't" )
    ("ddnt" "didn't" )

    ;; english word abbrev
    ("ann" "announcement" )
    ("arg" "argument" )
    ("autom" "automatic" )
    ("bc" "because" )
    ("bg" "background" )
    ("bt" "between" )


    ;; programing
    ("eq" "==" )
    ("r" "return" )
    ("utf8" "-*- coding: utf-8 -*-" )

    ;; unicode
    ("md" "—" )
    ("bu" "•" )
    ("ra" "→" )

    ))

;; define abbrev for specific major mode
;; the first part of the name should be the value of the variable major-mode of that mode
;; e.g. for go-mode, name should be go-mode-abbrev-table
(define-abbrev-table 'go-mode-abbrev-table
  '(
    ("g3" "package main
import \"fmt\"
func main() {
        fmt.Println(\"3\")
}")

    ("r" "return")
    ("ps" "+")
    ("eq" "==")
    ("pt" "fmt.Println(3)")
    ("fu" "func(x int) int { return 1 }")
    ;;

    ))

;; e.g. for ledger-mode, name should be go-mode-abbrev-table
(define-abbrev-table 'ledger-mode-abbrev-table
  '(
    ("abfc" "Assets:Banking:Fidelity:Checking")
    ("abrc" "Assets:Banking:Regions:Checking")
    ("lcap" "Liabilities:CreditCard:AMEX:Platinum")
    ;;

    ))


(set-default 'abbrev-mode t)

(setq save-abbrevs nil)

