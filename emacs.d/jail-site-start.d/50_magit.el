; (require 'magit)
(require 'magit-svn)
(require 'browse-at-remote)
(require 'git-messenger)

(global-set-key (kbd "C-x G") 'magit-status)
(global-set-key (kbd "C-c g g") 'browse-at-remote/browse)

(add-hook 'prog-mode-hook 'turn-on-diff-hl-mode)
(add-hook 'magit-mode-hook 'magit-svn-mode)

(global-magit-file-mode)

(global-set-key (kbd "C-x v p") 'git-messenger:popup-message)

(define-key git-messenger-map (kbd "m") 'git-messenger:copy-message)

;; Enable magit-commit-mode after typing 's', 'S', 'd'
(add-hook 'git-messenger:popup-buffer-hook 'magit-commit-mode)
