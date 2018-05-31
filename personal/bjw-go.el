;;;

;; Commentary: go mode configuration

(setq go-tab-width 4)
(setenv "GOPATH" "/Users/byron/Nextcloud/godev")

(add-to-list 'exec-path "/Users/byron/Nextcloud/godev/bin")

;; Call Gofmt before saving

(add-hook 'before-save-hook 'gofmt-before-save)


(provide 'bjw-go)

;;; bjw-go.el ends here
