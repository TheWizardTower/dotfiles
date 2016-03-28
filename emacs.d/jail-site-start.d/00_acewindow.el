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

(put 'set-goal-column 'disabled nil)




(global-unset-key (kbd "C-x o"))
(global-set-key (kbd "C-x o") 'ace-window)

