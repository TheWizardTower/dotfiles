;;; YASnippet
(require 'yasnippet)
(require 'helm-c-yasnippet)
(setq helm-yas-space-match-any-greedy t) ;[default: nil]
(global-set-key (kbd "C-c y") 'helm-yas-complete)
;;(add-hook 'prog-mode-hook #'yas-minor-mode)
(yas-global-mode)
(add-to-list 'yas-snippet-dirs "site-lisp/yasnippet-golang")
