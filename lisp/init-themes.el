(defun theme-set ()
  (let ((hour (string-to-number (format-time-string "%H"))))
    (if (and (>= hour 7) (< hour 20))
        (load-theme 'solarized-light t)
      (load-theme 'solarized-dark t))))

(add-hook 'emacs-startup-hook 'theme-set)

(provide 'init-themes)
