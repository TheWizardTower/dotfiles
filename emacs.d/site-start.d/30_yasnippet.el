;;; YASnippet
(require 'yasnippet)
(require 'helm-c-yasnippet)
(setq helm-yas-space-match-any-greedy t) ;[default: nil]
(global-set-key (kbd "C-c y") 'helm-yas-complete)
;;(add-hook 'prog-mode-hook #'yas-minor-mode)
(yas-global-mode)
(diminish 'yas-global-mode)
(diminish 'yas-minor-mode)

(require 'auto-yasnippet)
(global-set-key (kbd "C-c w") #'aya-create)
(global-set-key (kbd "C-c M-y") #'aya-expand)

(global-set-key (kbd "C-c y") 'company-yasnippet)
