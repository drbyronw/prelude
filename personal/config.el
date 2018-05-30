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

(setq-default cursor-type 'bar)

(global-linum-mode t)

(set-frame-font "Source Code Pro 15" nil t)
(prelude-require-package 'molokai-theme)
(prelude-require-package 'monokai-theme)
(load-theme 'molokai)

