(setq-default major-mode 'org-mode)

;(require 'linum)


;(global-relative-line-numbers-mode)

(require 'linum-relative)
;(linum-on)
(global-linum-mode 1)
(setq linum-relative-current-symbol "")

(require 'dired+)

(require 'color-theme)
;(color-theme-solarized)
;(gotham-theme)

(load-theme 'evenhold t)

(require 'sane-term)
(global-set-key (kbd "C-x t") 'sane-term)
(global-set-key (kbd "C-x T") 'sane-term-create)

(require 'browse-kill-ring+)

(require 'undo-tree)
(global-undo-tree-mode)

(column-number-mode)

(eval-after-load "menu-bar" '(require 'menu-bar+))

(setq-default indent-tabs-mode nil)

;; Highlight matching parenthesis.
(show-paren-mode 1)

(require 'kv)
(require 'gnomenm)

(require 'saveplace)
(setq-default save-place t)

(global-visual-line-mode)

(require 'whitespace)
(diminish 'whitespace-mode "ᗣ")
(diminish 'global-whitespace-mode "ᗣ")
(add-hook 'before-save-hook 'whitespace-cleanup)

