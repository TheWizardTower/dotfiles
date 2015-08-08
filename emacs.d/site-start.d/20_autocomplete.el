;;; Auto-Complete config
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;; Completion words longer than 4 characters
(custom-set-variables
 '(ac-ispell-requires 4)
 '(ac-ispell-fuzzy-limit 4))

(eval-after-load "auto-complete"
  '(progn
     (ac-ispell-setup)))

(add-hook 'git-commit-mode-hook 'ac-ispell-ac-setup)
(add-hook 'mail-mode-hook 'ac-ispell-ac-setupa)

(add-hook 'interactive-haskell-mode-hook 'ac-haskell-process-setup)
(add-hook 'haskell-interactive-mode-hook 'ac-haskell-process-setup)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'haskell-interactive-mode))

(eval-after-load 'haskell-mode
  '(define-key haskell-mode-map (kbd "C-c C-d") 'ac-haskell-process-popup-doc))

