; (require 'magit)
(require 'magit-svn)

(global-set-key (kbd "C-x G") 'magit-status)

(add-hook 'prog-mode-hook 'turn-on-diff-hl-mode)
(add-hook 'magit-mode-hook 'magit-svn-mode)

(global-magit-file-mode)
