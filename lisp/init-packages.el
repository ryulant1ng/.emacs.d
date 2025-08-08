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
  :ensure t
  :bind
  ([f8] . 'neotree-toggle))

(use-package undo-tree
  :ensure t
  :init (global-undo-tree-mode)
  :custom (undo-tree-auto-save-history nil))

(use-package mwim
  :ensure t
  :bind
  ("C-a" . mwim-beginning-of-code-or-line)
  ("C-e" . mwim-end-of-code-or-line))

;; Language support

(use-package markdown-mode
  :ensure t)

(use-package auctex
  :ensure t)

(use-package zig-mode
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

(use-package dashboard
  :ensure t
  :config
  (setq dashboard-banner-logo-title "No matter where you go, everyone is connected.")
  (setq dashboard-footer-messages '("make me sad. make me mad. make me feel alright?"))
  (setq dashboard-startup-banner (expand-file-name "lain.txt" user-emacs-directory))
  (setq dashboard-items '((recents . 10)))
  (dashboard-setup-startup-hook))

(provide 'init-packages)
