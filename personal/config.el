;; Byron J. Williams Emacs Config Settings

(setq user-full-name "Byron J. Williams"
      user-mail-address "me@drbyron.io")

;; predule modules - programming languages
(require 'prelude-web)
(require 'prelude-go)
(require 'prelude-c)
(require 'prelude-css)
(require 'prelude-scss)
(require 'prelude-emacs-lisp)
(require 'prelude-js)
(require 'prelude-latex)
(require 'prelude-python)
(require 'prelude-shell)
(require 'prelude-yaml)
(require 'prelude-programming)

;; predule modules - utilities
(require 'prelude-org)
(require 'prelude-company)
;; (require 'prelude-helm-everywhere)
;; (require 'prelude-helm)
(require 'prelude-key-chord)
(require 'prelude-ivy)
;; (require 'prelude-evil)
;; (require 'prelude-ido)

;; (define-key helm-find-files-map "\t" 'helm-execute-persistent-action)

(prelude-require-package 'molokai-theme)
(prelude-require-package 'ag)
(prelude-require-package 'counsel-projectile)
(prelude-require-package 'ledger-mode)
(prelude-require-package 'golden-ratio-scroll-screen)
(prelude-require-package 'org-bullets)
(prelude-require-package 'org-autolist)
(prelude-require-package 'org-journal)
(prelude-require-package 'doom-themes)
(prelude-require-package 'all-the-icons)
(prelude-require-package 'neotree)
(prelude-require-package 'rainbow-delimiters)
(prelude-require-package 'prettier-js)
(prelude-require-package 's)
(prelude-require-package 'dash)
(prelude-require-package 'rjsx-mode)
(prelude-require-package 'emmet-mode)
(prelude-require-package 'tagedit)
(prelude-require-package 'ein)

(defalias 'projectile-find-file 'counsel-projectile-find-file)
;; (defalias 'helm-projectile-find-file 'counsel-projectile-find-file)

(setq prelude-whitespace nil)
(rainbow-delimiters-mode +1)
(smartparens-strict-mode -1)
(savehist-mode +1)
(counsel-projectile-mode +1)
;; (setq sml/theme 'light)
(global-prettify-symbols-mode +1)

;; ace-window settings
(setq aw-keys '(?j ?k ?l ?i ?o))
(setq aw-dispatch-always +1)

(setq ivy-use-virtual-buffers t)
(setq ivy-re-builders-alist
      '((swiper . ivy--regex-plus)
        (t . ivy--regex-fuzzy)))
(setq ivy-wrap +1)
;; (setq ido-use-virtual-buffers t)

;; ledger
(setq ledger-post-amount-alignment-column 62)

(setq prelude-theme 'molokai)

(defvar bjw-doom-themes (expand-file-name "emacs-doom-themes" prelude-personal-dir))

(add-to-list 'load-path bjw-doom-themes)
;; (server-start)

;; Global Key Configs
(global-set-key (kbd "C-q") 'emacs-surround)
(global-set-key (kbd "C-r") 'isearch-forward)
(global-set-key (kbd "C-x o") 'other-window)
(global-set-key (kbd "C-x p") 'ace-window)
(global-set-key (kbd "M-o") 'ace-window)
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "C-x C-k k") 'kill-buffer)
(global-set-key [remap scroll-down-command] 'golden-ratio-scroll-screen-down)
(global-set-key [remap scroll-up-command] 'golden-ratio-scroll-screen-up)
(global-set-key (kbd "C-x C-m") 'bjw/duplicate-line)
(global-set-key (kbd "s-<up>") 'bjw/move-line-up)
(global-set-key (kbd "s-<down>") 'bjw/move-line-down)
(global-set-key (kbd "C-c C-t") 'toggle-transparency)


;; personal key chords
(key-chord-define-global "kk" 'kill-whole-line)

;; Doom-Themes settings
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; ;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; ;; may have their own settings.
(load-theme 'doom-molokai t)

;; ;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; ;; Enable custom neotree theme
(doom-themes-neotree-config)  ; all-the-icons fonts must be installed!

;; ;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)
(set-background-color "#050505")
(set-frame-parameter (selected-frame) 'alpha '(95 . 90))
;; Global Variables:
;; byte-compile-warnings: (not free-vars)
;; End:
