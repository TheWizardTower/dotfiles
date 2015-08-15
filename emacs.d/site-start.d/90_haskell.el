(eval-after-load 'flycheck '(require 'flycheck-ghcmod))
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(defadvice haskell-mode-stylish-buffer (around skip-if-flycheck-errors activate)
  (unless (flycheck-has-current-errors-p 'error)
    ad-do-it))
(setq haskell-stylish-on-save t)

(add-to-list 'load-path "~/.emacs.d/structured-haskell-mode/elisp/")
(require 'shm)
(add-hook 'haskell-mode-hook 'structured-haskell-mode)

(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
;; Ignore compiled Haskell files in filename completions
(add-to-list 'completion-ignored-extensions ".hi")
