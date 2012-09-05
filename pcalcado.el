;;;;;;;;;;;;;; global stuff

;;soft wrap
(visual-line-mode)

;; small font size
(set-face-attribute 'default (selected-frame) :height 100)

(global-linum-mode 1)

(setq column-number-mode t)

;;soft wrap
(visual-line-mode)

;; whitespace
(global-set-key (kbd "C-|") 'whitespace-cleanup)
(add-hook 'after-save-hook 'whitespace-cleanup)

(setq slime-net-coding-system 'utf-8-unix)

;;htmlize
(setq htmlize-output-type 'inline-css)

;;region overwritten
(delete-selection-mode 1)

;; as per http://jblevins.org/projects/markdown-mode/
(defun markdown-custom () "markdown-mode-hook"
  (setq markdown-command "markdown | smartypants")) (add-hook 'markdown-mode-hook '(lambda() (markdown-custom)))
