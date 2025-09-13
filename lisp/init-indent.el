;; -- C/C++

(defun c-c++-indent ()
  (setq c-basic-offset 8) ; We already set `indent-tabs-mode` to `nil` in init.el.
  (setq c-default-style "k&r"))
(add-hook 'c-mode-hook 'c-c++-indent)
(add-hook 'c++-mode-hook 'c-c++-indent)

(provide 'init-indent)
