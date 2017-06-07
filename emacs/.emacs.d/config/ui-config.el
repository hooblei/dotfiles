
(provide 'ui-config)

; Load theme
(load-theme 'vrsl t)

; Hide menu
(menu-bar-mode -1)

;; relative-line-numbers
;(require 'relative-line-numbers)
;(add-hook 'prog-mode-hook 'relative-line-numbers-mode t)
;(add-hook 'prog-mode-hook 'line-number-mode t)
;(add-hook 'prog-mode-hook 'column-number-mode t)

;;; GUI only
(if (display-graphic-p)
    (progn
      ; Hide toolbar
      (tool-bar-mode -1)
      ; hide scrollbars
      (scroll-bar-mode -1)
      ; XXX Set custom font (fixed 9x15)
      (custom-set-faces
        '(default ((t (:background "gray1")))))
      ; Start maximized
      (custom-set-variables
        '(initial-frame-alist (quote ((fullscreen . maximized)))))))

; Fix term colors (?)
;(color-theme-approximate-on)


;;; Languages
;;; TODOs split languages into files
;; JavaScript
; Set indent on JS files to 2
(setq js-indent-level 2)
