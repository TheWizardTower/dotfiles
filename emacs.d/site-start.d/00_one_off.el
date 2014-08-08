(setq-default major-mode 'org-mode)

(require 'linum)
(global-linum-mode 1)

(require 'go-mode)
(add-hook 'go-mode 'linum-mode)

(require 'tramp)

(require 'multi-term)
(setq multi-term-program "/usr/bin/fish")

(require 'highline)
(global-highline-mode)

