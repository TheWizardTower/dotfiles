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

(setq exec-path (cons (expand-file-name "~/.cabal/bin/") exec-path))
;;(autoload 'ghc-init "ghc" nil t)
;;(autoload 'ghc-debug "ghc" nil t)
;;(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

;;; This throws an error on load. Find another keybinding.
;; (eval-after-load 'haskell-mode
;;           `(define-key haskell-mode-map
;;                        (kbd "C-c C-d d")
;;                        #'ghc-imported-from-haddock-for-symbol-at-point))

(add-hook 'inferior-haskell-mode-hook 'turn-on-ghci-completion)


;;(add-hook 'haskell-mode-hook
;;          (lambda () (define-key haskell-mode-map (kbd "C-c ?") 'helm-ghc-errors)))
