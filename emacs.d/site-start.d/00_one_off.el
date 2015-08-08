(setq-default major-mode 'org-mode)

(require 'linum)
(global-linum-mode 1)

(require 'dired+)

(require 'color-theme)
;(color-theme-solarized)
;(gotham-theme)

(load-theme 'evenhold t)

(require 'sane-term)
(global-set-key (kbd "C-x t") 'sane-term)
(global-set-key (kbd "C-x T") 'sane-term-create)

(require 'browse-kill-ring+)

(tabbar-mode)

(require 'undo-tree)
(global-undo-tree-mode)

(column-number-mode)

(crosshairs-mode)

(eval-after-load "menu-bar" '(require 'menu-bar+))

(setq-default indent-tabs-mode nil)

;; Highlight matching parenthesis.
(show-paren-mode 1)
