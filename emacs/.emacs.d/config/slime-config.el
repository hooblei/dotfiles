
(provide 'slime-config)

(use-package elisp-slime-nav
  :demand elisp-slime-nav
  :config (progn
            (defun my-lisp-hook ()
              (elisp-slime-nav-mode)
              (turn-on-eldoc-mode))
            (add-hook 'emacs-lisp-mode-hook 'my-lisp-hook)))

(evil-define-key 'normal emacs-lisp-mode-map (kbd "K")
  'elisp-slime-nav-describe-elisp-thing-at-point)

(provide 'slime-config)
