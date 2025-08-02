(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(eval-when-compile (require 'use-package))

(use-package editorconfig ; Won't use `:ensure t`, so requires Emacs 30+.
  :config
  (editorconfig-mode 1))

(use-package amx
  :ensure t
  :init (amx-mode))

(use-package company
  :ensure t
  :init (global-company-mode)
  :config
  (setq company-transformers '(company-sort-by-occurrence)))

(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))

(use-package powerline
  :ensure t
  :config
  (powerline-default-theme))

(use-package spaceline
  :ensure t
  :after powerline
  :config
  (spaceline-emacs-theme))

(use-package markdown-mode
  :ensure t)

(provide 'init-packages)
