(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(eval-when-compile (require 'use-package))

;; Editing

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

(use-package company-box
  :ensure t
  :if window-system
  :hook (company-mode . company-box-mode))

(use-package neotree
  :ensure t)

;; Language support

(use-package markdown-mode
  :ensure t)

(use-package auctex
  :ensure t)

;; Beautify

(use-package powerline
  :ensure t
  :config
  (powerline-default-theme)
  (setq powerline-default-separator nil))

(use-package spaceline
  :ensure t
  :after powerline
  :config
  (spaceline-emacs-theme)
  (setq spaceline-minor-modes-separator " "))

(use-package solarized-theme
  :ensure t)

(provide 'init-packages)
