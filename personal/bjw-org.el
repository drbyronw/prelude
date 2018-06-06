;;;

;; Commentary: go mode configuration


;; Golang Setttings
(defun bjw/my-org-mode-hook ()
  (setq line-spacing .1)
  (setq tab-width 2)

  (org-autolist-mode +1)
  )

(add-hook 'go-mode-hook 'bjw/my-org-mode-hook)

;; https://emacs.stackexchange.com/questions/19506/suppress-warning-assignment-to-free-variable-and-others
;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

(provide 'bjw-org)

;;; bjw-go.el ends here
