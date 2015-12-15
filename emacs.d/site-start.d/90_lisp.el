(require 'erefactor)

(add-hook 'emacs-lisp-mode-hook 'erefactor-lazy-highlight-turn-on)
(add-hook 'lisp-mode-hook 'erefactor-lazy-highlight-turn-on)
