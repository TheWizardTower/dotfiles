(setq-default major-mode 'org-mode)

(require 'linum)
(global-linum-mode 1)

(require 'tramp)

(require 'color-theme)
(color-theme-solarized)

(add-to-list 'auto-mode-alist '("\\.cf\\'" . cfengine-auto-mode))

(add-hook 'cfengine3-mode-hook 'turn-on-eldoc-mode)

(require 'browse-kill-ring+)

(tabbar-mode)

(require 'yasnippet)
(add-to-list 'yas-snippet-dirs "site-lisp/yasnippet-golang")
(yas-global-mode 1)

(require 'haskell-mode-autoloads)
