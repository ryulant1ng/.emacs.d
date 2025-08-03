;; Emacs version check
(let ((minver "30"))
  (when (version< emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))

;; Editing
(column-number-mode t)
(menu-bar-mode -1)
(delete-selection-mode t)
(setq-default indent-tabs-mode nil)
(setq make-backup-files nil) ; Disable auto save & backup files
(setq auto-save-default nil)

;; UI settings
(setq inhibit-startup-message t)
(global-display-line-numbers-mode t)
(global-hl-line-mode t)
(global-visual-line-mode t)
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)
(setopt display-fill-column-indicator-column 80)
(setopt display-fill-column-indicator-character ?\u00a6)

;; GUI environment settings
(when (display-graphic-p)
  (scroll-bar-mode -1)
  (tool-bar-mode -1)
  (add-to-list 'default-frame-alist '(width . 100))
  (add-to-list 'default-frame-alist '(height . 30))
  (setq gui-font "Droid Sans Mono")
  (when (member gui-font (font-family-list))
    (set-frame-font gui-font t t))
  (setq x-underline-at-descent-line t))

;; Custom file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; User scripts
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-packages)
(require 'init-fonts)
(require 'init-themes)
