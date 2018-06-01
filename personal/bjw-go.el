;;;

;; Commentary: go mode configuration


;; Golang Setttings
(defun bjw/my-go-mode-hook ()
  ;; (setq compile-command "go build -v && go test -v && go vet && golint")
  (setq compile-command "go build -v")
  (define-key (current-local-map) "\C-c\C-c" 'compile)
  (setq line-spacing .1)
  (flyspell-mode 0)
  (setq go-tab-width 4)
  (setq tab-width 4)
  (setenv "GOPATH" "/Users/byron/Nextcloud/godev")
  (add-to-list 'exec-path "/Users/byron/Nextcloud/godev/bin")
  ;; Call Gofmt before saving
  (setq gofmt-command "goimports")
  (setq flycheck-check-syntax-automatically '(mode-enabled save))
  (add-hook 'before-save-hook 'gofmt-before-save)
  ;; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump)

  (message "Go MODE Hook Function Executed - bjw/my-go-mode-hook")
  )
(add-hook 'go-mode-hook 'bjw/my-go-mode-hook)


(provide 'bjw-go)

;;; bjw-go.el ends here
