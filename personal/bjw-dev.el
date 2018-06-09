;;;

;;; JS configuration
(defun bjw/my-js-mode-hook ()

  (setq-default
   ;; js2-mode
   js2-basic-offset 2
   js2-indent-level 2
   ;; web-mode
   css-indent-offset 2
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2)

  
  (setq line-spacing .1)
  (flyspell-mode 0)
  ;; (setq tab-width 2)
  (setq flycheck-check-syntax-automatically '(mode-enabled save))

  (add-hook 'js2-mode-hook 'prettier-js-mode)
  (add-hook 'web-mode-hook 'prettier-js-mode)

  (setq prettier-js-args '(
                           "--single-quote"
                           "--bracket-spacing" "true"
                           "--trailing-comma" "es5"
                           ;; "--no-semi" "true"
                           ))
  
  ;; disable jshint since we prefer eslint checking
  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers
                        '(javascript-jshint javascript-jscs)))
  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers
                        '(flycheck-jscsrc)))

  (flycheck-add-mode 'javascript-eslint 'js-mode)
  (flycheck-add-mode 'javascript-eslint 'js2-mode)
  (flycheck-add-mode 'javascript-eslint 'web-mode)
  )

;; Golang Setttings
(defun bjw/my-go-mode-hook ()
  ;; (setq compile-command "go build -v && go test -v && go vet && golint")
  (setq compile-command "go build -v")
  (define-key (current-local-map) "\C-c\C-c" 'compile)
  (setq line-spacing .1)
  (flyspell-mode 0)
  (setq go-tab-width 4)
  (setq tab-width 4)
  ;; (setenv "GOPATH" "/Users/byron/Nextcloud/godev")
  (add-to-list 'exec-path "/Users/byron/Nextcloud/godev/bin")
  (exec-path-from-shell-copy-env "GOPATH")
  ;; Call Gofmt before saving
  (setq gofmt-command "goimports")
  (setq flycheck-check-syntax-automatically '(mode-enabled save))
  (add-hook 'before-save-hook 'gofmt-before-save)
  ;; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump)

  (message "Go MODE Hook Function Executed - bjw/my-go-mode-hook")
  )

(add-hook 'go-mode-hook 'bjw/my-go-mode-hook)

;; https://emacs.stackexchange.com/questions/19506/suppress-warning-assignment-to-free-variable-and-others
;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

(provide 'bjw-dev)

;;; bjw-dev.el ends here
