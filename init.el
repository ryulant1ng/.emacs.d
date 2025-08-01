(column-number-mode t)
(menu-bar-mode -1)
(delete-selection-mode t)
(setq inhibit-startup-message t)
(global-display-line-numbers-mode t)
(global-hl-line-mode t)
(global-visual-line-mode t)
(setq-default indent-tabs-mode nil)

(setq make-backup-files nil)
(setq auto-save-default nil)

(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)
(setopt display-fill-column-indicator-column 80)
(setopt display-fill-column-indicator-character ?\u007c)

(when (display-graphic-p)
  (scroll-bar-mode nil)
  (tool-bar-mode -1)
  (add-to-list 'default-frame-alist '(width . 100))
  (add-to-list 'default-frame-alist '(height . 30))
  (when (member "Droid Sans Mono" (font-family-list))
    (set-frame-font "Droid Sans Mono" t t)))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'initpackages)
