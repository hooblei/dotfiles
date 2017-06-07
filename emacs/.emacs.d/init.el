
(add-to-list 'load-path (concat user-emacs-directory "config"))
(add-to-list 'custom-theme-load-path (concat user-emacs-directory "themes"))
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))


(require 'package)
(setq package-enable-at-startup nil)
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(progn
  (require 'use-package)
  (setq use-package-always-ensure t))


(require 'emacs-config)
(require 'ui-config)
(require 'evil-config)
(require 'helm-config)
(require 'slime-config)
(require 'flycheck-config)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("6628fde835e8ef7c8e69d8bcb2e6e544fe6973473be0d384abb52e58d0830e43" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
