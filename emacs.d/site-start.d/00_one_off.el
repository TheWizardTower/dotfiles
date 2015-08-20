(setq-default major-mode 'org-mode)

(require 'linum-relative)
(global-linum-mode 1)
(setq linum-relative-current-symbol "")

(setq comment-auto-fill-only-comments t)

(require 'dired+)

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


;;; Perhaps consider moving the ace-* config lines
;;; to their own file.
(require 'ace-isearch)
(global-ace-isearch-mode +1)

(require 'ace-jump-buffer)

(require 'ace-jump-helm-line)
(eval-after-load "helm"
  '(define-key helm-map (kbd "C-'") 'ace-jump-helm-line))

(autoload
  'ace-jump-mode-pop-mark
  "ace-jump-mode"
  "Ace jump back:-)"
  t)
(eval-after-load "ace-jump-mode"
  '(ace-jump-mode-enable-mark-sync))
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode-pop-mark)
