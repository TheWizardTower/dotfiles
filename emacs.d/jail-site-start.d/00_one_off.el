(setq-default major-mode 'org-mode)

(require 'dired+)

;;; Stolen from http://efod.se/writings/linuxbook/html/date-and-time.html
(setq display-time-24hr-format t)
;; (setq display-time-day-and-date t)
(display-time)

(fset 'yes-or-no-p 'y-or-n-p)
(load-theme 'evenhold t)

(require 'browse-kill-ring+)

(require 'undo-tree)
(global-undo-tree-mode)

;; Stolen from Sacha Chua.
(setq undo-tree-visualizer-timestamps t)
(setq undo-tree-visualizer-diff t)

(eval-after-load "menu-bar" '(require 'menu-bar+))

(setq-default indent-tabs-mode nil)

;; Highlight matching parenthesis.
(show-paren-mode 1)

(require 'gnomenm)

(require 'saveplace)
(setq-default save-place t)

(global-visual-line-mode)
(diminish 'global-visual-line-mode)

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


(require 'ecb)

(global-aggressive-indent-mode 1)

(require 'insert-shebang)
(add-hook 'find-file-hook 'insert-shebang)

;; (require 'exercism)
