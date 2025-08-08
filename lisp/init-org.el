;; org-mode is NOT very suitable for Chinese/Japanese documents, since it
;; requires spaces to separate the format.

;; For org-mode-related packages, see lisp/init-packages.el.

(setq org-directory (file-truename "~/org/"))
(setq org-agenda-files '("~/org/agenda"))

(setq org-pretty-entities t)
(setq org-startup-with-inline-images t)

(provide 'init-org)
