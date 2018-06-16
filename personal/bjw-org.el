;;;

;; Commentary: go mode configuration


;; Golang Setttings
(defun bjw/my-org-mode-hook ()
  (setq line-spacing .1)
  (setq tab-width 2)

  (org-autolist-mode +1)
  (org-indent-mode +1)
  (org-bullets-mode +1)

  (setq org-use-speed-commands t
        org-hide-emphasis-markers t
        org-src-fontify-natively t   ;; Pretty code blocks
        org-pretty-entities t
        org-src-tab-acts-natively t
        org-completion-use-ido t
        org-outline-path-complete-in-steps nil
        org-confirm-babel-evaluate nil)

  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (latex . t)
     (ledger . t)
     (python . t)
     (sh . t)
     (shell . t)
     (sql . nil)))

  )

(add-hook 'org-mode-hook 'bjw/my-org-mode-hook)

;; https://emacs.stackexchange.com/questions/19506/suppress-warning-assignment-to-free-variable-and-others
;; Local Variables:
;; byte-compile-warnings: (not free-vars)
;; End:

(provide 'bjw-org)

;;; bjw-go.el ends here
