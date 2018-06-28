;; Byron J. Williams Emacs Config Settings
(scroll-bar-mode 0)
;; (global-linum-mode t)
(setq-default cursor-type 'bar)
;; (set-frame-font "Source Code Pro 15" nil t)
;; (set-frame-font "Operator Mono Light 14" nil t)

(set-frame-parameter (selected-frame) 'alpha '(89 . 84))
(if (eq system-type 'darwin)
    (progn (setq mac-command-modifier 'meta)
     (setq mac-option-modifier 'super))
  )

(if (eq system-type 'darwin)
  (progn (add-to-list 'default-frame-alist '(font . "Operator Mono Light 16" ))
(set-face-attribute 'default t :font "Operator Mono Light 16" ))
  (progn
   (set-face-attribute 'default t :font "Operator Mono Light 13")
   (add-to-list 'default-frame-alist '(font . "Operator Mono Light 13" ))
  ))


(global-hl-line-mode t)
(global-visual-line-mode t)
(when window-system (global-prettify-symbols-mode t))


