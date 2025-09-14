;; -- Emacs version check
(let ((minver "30"))
  (when (version< emacs-version minver)
    (error "Your Emacs is too old--this config requires %s or higher." minver)))

;; -- Defer garbage collection further back in the startup process
(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'emacs-startup-hook
          (lambda ()
            "Recover GC values after startup. Default is 800000."
            (setq gc-cons-threshold 800000)))

;; -- Editing
(column-number-mode t)
(menu-bar-mode -1)
(delete-selection-mode t)
(setq-default indent-tabs-mode nil)
(setq make-backup-files nil) ; Disable auto save files
(setq auto-save-default nil) ; Disable backup files
(prefer-coding-system 'utf-8-dos)

;; -- UI settings
(setq inhibit-startup-message t)
(global-display-line-numbers-mode t)
(global-hl-line-mode t)
(global-visual-line-mode t)
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)
(setopt display-fill-column-indicator-column 100) ; Use 100 column line rule for modern display
(setopt display-fill-column-indicator-character ?\u00a6)
(setq shr-width 80)
(setq shr-max-width 80)

;; -- GUI environment settings
(when (display-graphic-p)
  (scroll-bar-mode -1)
  (tool-bar-mode -1)
  (global-tab-line-mode t)
  (setq default-frame-alist '((width . 120)
                              (height . 40)
                              (alpha-background . 80))) ; Can't use on macOS/Windows with Emacs 30.2
  (cond
   ((or (eq system-type 'darwin) (eq system-type 'gnu/linux))
    (setq gui-font "Google Sans Code"))
   ((eq system-type 'windows-nt) ; Emacs on Windows not support VF fonts
    (setq gui-font "Consolas")))
  (when (member gui-font (font-family-list))
    (set-frame-font gui-font t t))
  (setq x-underline-at-descent-line t)
  (pixel-scroll-precision-mode t)) ; Better than good-scroll

;; -- Custom file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; -- User scripts
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-packages)
(when (display-graphic-p)
  (require 'init-fonts))
(require 'init-themes)
(require 'init-indent)
(require 'init-org)
(require 'init-tex)
