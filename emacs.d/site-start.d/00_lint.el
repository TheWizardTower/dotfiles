;;; This initializes Flycheck, Flyspell, and rainbow-delimiters mode.


;;; Flycheck config
(add-hook 'after-init-hook #'global-flycheck-mode)

(require 'flycheck-color-mode-line)

(eval-after-load "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

(with-eval-after-load 'flycheck
  (flycheck-pos-tip-mode))

(setq flycheck-idle-change-delay 0.2)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;;; Flyspell mode. Spellchecking.
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)
(setq flyspell-correct-interface 'flyspell-correct-helm)

(require 'ace-flyspell)

(require 'annotate-depth)
(add-hook 'prog-mode-hook 'annotate-depth-mode)
