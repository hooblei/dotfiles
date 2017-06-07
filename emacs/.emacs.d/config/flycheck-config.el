
(use-package flycheck
  :demand flycheck
  :config (progn
            ; When to trigger syntax check
            (setq flycheck-check-syntax-automatically '(mode-enabled save))
            (setq flycheck-standard-error-navigation nil)
            (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc html-tidy))
            (global-flycheck-mode t)))

(provide 'flycheck-config)
