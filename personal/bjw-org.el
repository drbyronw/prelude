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
        org-return-follows-link t
        org-outline-path-complete-in-steps nil
        org-confirm-babel-evaluate nil
        org-todo-keywords '((sequence "TODO(t)" "IN PROGRESS(g)" "WAITING(w)" "|" "DONE(d)")
                            (sequence "|" "CANCELED(c)")))

  (setq org-journal-dir "~/journal/")
  (setq org-journal-date-format "#+TITLE: Journal Entry- %e %b %Y (%A)")

  (add-hook 'org-mode-hook 'yas-minor-mode-on)

  (setq org-agenda-files '("~/Dropbox/org"
                           "~/Dropbox/org/research"
                           "~/Dropbox/org/spiritual"))

  (font-lock-add-keywords            ; A bit silly but my headers are now
   'org-mode `(("^\\*+ \\(TODO\\) "  ; shorter, and that is nice canceled
                (1 (progn (compose-region (match-beginning 1) (match-end 1) "TODO ⚑")
                          nil)))
               ("^\\*+ \\(DOING\\) "
                (1 (progn (compose-region (match-beginning 1) (match-end 1) "IN PROGRESS ⚐")
                          nil)))
               ("^\\*+ \\(CANCELED\\) "
                (1 (progn (compose-region (match-beginning 1) (match-end 1) "✘")
                          nil)))
               ("^\\*+ \\(DONE\\) "
                (1 (progn (compose-region (match-beginning 1) (match-end 1) "DONE ✔")
                          nil)))))

  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (latex . t)
     (ledger . t)
     (js . t)
     (bash . t)
     (css . t)
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
