(eval-after-load 'flycheck '(require 'flycheck-ghcmod))
(eval-after-load 'flycheck '(require 'flycheck-hdevtools))
(add-hook 'haskell-mode-hook 'haskell-indentation-mode)

(defadvice haskell-mode-stylish-buffer (around skip-if-flycheck-errors activate)
  (unless (flycheck-has-current-errors-p 'error)
    ad-do-it))

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))

(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

(add-to-list 'company-backends 'company-ghc)

;; Ignore compiled Haskell files in filename completions
(add-to-list 'completion-ignored-extensions ".hi")

(setq exec-path (cons (expand-file-name "~/.local/bin/") exec-path))
; This throws an error on load. Find another keybinding.
 (eval-after-load 'haskell-mode
           `(define-key haskell-mode-map
                        (kbd "C-c d")
                        #'ghc-imported-from-haddock-for-symbol-at-point))

(add-hook 'inferior-haskell-mode-hook 'turn-on-ghci-completion)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)

(add-hook 'haskell-mode-hook
          (lambda () (define-key haskell-mode-map (kbd "C-c ?") 'helm-ghc-errors)))


(require 'ebal)
(setq ebal-operation-mode 'stack)


(add-to-load-path "~/git/HaRe/elisp/")
(require 'hare)
(autoload 'hare-init "hare" nil t)

(require 'hindent)
(add-hook 'haskell-mode-hook #'hindent-mode)
