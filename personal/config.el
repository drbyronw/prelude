;; Byron J. Williams Emacs Config Settings

(setq user-full-name "Byron J. Williams"
      user-mail-address "me@drbyron.io")

;; predule modules - programming languages
(require 'prelude-web)
(require 'prelude-go)
(require 'prelude-c)
(require 'prelude-css)
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
(require 'prelude-helm-everywhere)
(require 'prelude-helm)
(require 'prelude-key-chord)
(require 'prelude-ivy)

(define-key helm-find-files-map "\t" 'helm-execute-persistent-action)

(prelude-require-package 'molokai-theme)
(prelude-require-package 'ag)
(prelude-require-package 'counsel-projectile)

(defalias 'projectile-find-file 'counsel-projectile-find-file)

(server-start)

;; Global Key Configs
(global-set-key (kbd "C-q") 'emacs-surround)
(global-set-key (kbd "C-x k") 'kill-this-buffer)
(global-set-key (kbd "C-x C-k k") 'kill-buffer)
