(setq-default major-mode 'org-mode)

;(require 'linum-relative)
;'(global-linum-mode 1)
;(setq linum-relative-current-symbol "")

(require 'linum)
(global-linum-mode)

(setq comment-auto-fill-only-comments t)

(require 'dired+)

(load-theme 'evenhold t)

(require 'sane-term)
(global-set-key (kbd "C-x t") 'sane-term)
(global-set-key (kbd "C-x T") 'sane-term-create)

(require 'browse-kill-ring+)

(require 'undo-tree)
(global-undo-tree-mode)

;; Stolen from Sacha Chua.
(setq undo-tree-visualizer-timestamps t)
(setq undo-tree-visualizer-diff t)

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

;; make whitespace-mode use just basic coloring
;;(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))
(setq whitespace-display-mappings
      ;; all numbers are Unicode codepoint in decimal. ⁖ (insert-char 182 1)
      '(
        (space-mark 32 [183] [46]) ; 32 SPACE 「 」, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
        (newline-mark 10 [182 10]) ; 10 LINE FEED
        (tab-mark 9 [9655 9] [92 9]) ; 9 TAB, 9655 WHITE RIGHT-POINTING TRIANGLE 「▷」
        ))

(require 'guru-mode)
(guru-global-mode +1)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)


;;; Stolen from http://efod.se/writings/linuxbook/html/date-and-time.html
(setq display-time-24hr-format t)
;; (setq display-time-day-and-date t)
(display-time)

(fset 'yes-or-no-p 'y-or-n-p)

(require 'ecb)

(global-aggressive-indent-mode 1)

(require 'alert)

(require 'blank-mode)

(require 'indent-guide)

(indent-guide-global-mode)

(require 'aggressive-fill-pagagraph)

(afp-setup-recommended-hooks)

(require 'insert-shebang)
(add-hook 'find-file-hook 'insert-shebang)

(require 'exercism)
