
(provide 'emacs-config)

;; Unbind C-z
;(use-package multi-term
;  :demand multi-term
;  :config (add-to-list 'term-bind-key-alist '("C-z" . term-stop-subjob)))

;; Hide start up message
(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t)

;; Better line wrapping
(visual-line-mode 1)
(setq-default indent-tabs-mode nil)

;; Also indent on a new line
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Disable backup files
(setq make-backup-files nil)

;; Enforce a trailing newline
(setq require-final-newline t)

; Do not create lock files
(setq create-lockfiles nil)

;; Remember the cursor position of files when reopening them
(setq save-place-file "~/.emacs.d/saveplace")
(setq-default save-place t)
(require 'saveplace)

;; Do not use tabs instead use spaces
(setq-default indent-tabs-mode nil)

; ???
;(set-fringe-style '(8 . 0))

;; Vim like scrolling
(use-package smooth-scrolling
  :demand smooth-scrolling
  :config (progn
            (setq smooth-scroll-margin 5)))

;; No message in initial scratch buffer
(setq initial-scratch-message nil)

;; Hide startup messages
(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t)

;; Let me write `y` or `n` even for important stuff that would normally require
;; me to fully type `yes` or `no`.
(defalias 'yes-or-no-p 'y-or-n-p)

;; Highlight matching paren
(show-paren-mode t)

;; UTF-8 everything!
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Raise the ring mark
(setq mark-ring-max 64)
(setq global-mark-ring-max 128)

;; Show me the new saved file if the contents change on disk when editing.
(global-auto-revert-mode 1)

;; Enable auto pairs
(electric-pair-mode t)

;; Keep emacs in default-directory
;; http://stackoverflow.com/a/2650987/388449
(defmacro disallow-cd-in-function (fun)
  "Prevent FUN (or any function that FUN calls) from changing directory."
  `(defadvice ,fun (around dissallow-cd activate)
     (let ((old-dir default-directory) ; Save old directory
           (new-buf ad-do-it)) ; Capture new buffer
       ;; If FUN returns a buffer, operate in that buffer in addition
       ;; to current one.
       (when (bufferp new-buf)
         (set-buffer new-buf)
         (setq default-directory old-dir))
       ;; Set default-directory in the current buffer
       (setq default-directory old-dir))))

(disallow-cd-in-function find-file-noselect-1)
(disallow-cd-in-function set-visited-file-name)

;(use-package rainbow-delimiters
;  :demand rainbow-delimiters
;  :config (progn
;            (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)))

