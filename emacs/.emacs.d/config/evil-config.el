
(provide 'evil-config)

;(require 'evil)
;;; Key bindings
;; Window navigation
;(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
;(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
;(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
;(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
;; Cursor colors
;(setq evil-emacs-state-cursor '("red" box))
;(setq evil-normal-state-cursor '("white" box))
;(setq evil-visual-state-cursor '("orange" box))
;(setq evil-insert-state-cursor '("red" bar))
;(setq evil-replace-state-cursor '("red" bar))
;(setq evil-operator-state-cursor '("red" hollow))
;; Enable evil mode
;(evil-mode 1)

(setq evil-toggle-key "C-'")
(use-package evil
  :demand evil
  :config (progn
            (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
            (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
            (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
            (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
            ; Cursor colors (GUI only)
            (setq evil-emacs-state-cursor '("red" box))
            (setq evil-normal-state-cursor '("white" box))
            (setq evil-visual-state-cursor '("orange" box))
            (setq evil-insert-state-cursor '("red" bar))
            (setq evil-replace-state-cursor '("red" bar))
            (setq evil-operator-state-cursor '("red" hollow))
            ; Enable evil mode
            (evil-mode 1)))


(use-package evil-surround
  :demand evil-surround
  :config (progn
            (global-evil-surround-mode 1)))

; evil-leader
;(setq evil-leader/in-all-states 1)
;(global-evil-leader-mode)
;(evil-leader/set-leader ",")
