;;; Golang
(setq exec-path (cons "/usr/bin" exec-path))
(add-to-list 'exec-path (expand-file-name "~/gocode/bin"))

;(require 'go-mode)
(require 'go-autocomplete)

(setq gofmt-command "goimports")
(require 'go-mode)
(add-hook 'before-save-hook 'gofmt-before-save)
(require 'golint)
(require 'go-projectile)
(require 'go-eldoc)
(add-hook 'go-mode-hook 'go-eldoc-setup)
;; Pretty sure they are already in the path. But leaving this
;; as a reminder.
;; (add-to-list 'load-path "folder-in-which-go-dlv-files-are-in/")
(require 'go-dlv)


;;; Fix for https://github.com/syl20bnr/spacemacs/issues/2495.
(setq flycheck-check-syntax-automatically '(new-line save))
