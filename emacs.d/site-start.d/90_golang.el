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

(require 'go-direx)

(require 'govet)


;;; Keeping this handy in case I need it for one of my modes.
;;; A few go-modes don't play nice if you aren't editing a file -- as is
;;; the case when you are working in a *scratch* buffor for Go.
;; (defun my-go-hook ()
;;   (when buffer-file-name
;;     (setq-local company-backends '(company-go))))

;; (add-hook 'go-mode-hook #'my-go-hook)
