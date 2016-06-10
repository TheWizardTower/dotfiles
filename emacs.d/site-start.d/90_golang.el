;;; Golang
(setq exec-path (cons "/usr/bin" exec-path))
(add-to-list 'exec-path (expand-file-name "~/gocode/bin"))

;;; This has to come first, so that $GOPATH is properly set up before
;;; anything else golang-related has a chance to get confused.
;; (require 'go-gopath)

;;; Now load go-mode
(require 'go-mode)
(add-hook 'go-mode-hook (load-library (expand-file-name "~/gocode/src/golang.org/x/tools/cmd/oracle/oracle.el")))

;;; Once go-mode is loaded, we can bind the go-gopath function to the
;;; go-map-mode exclusively, rather than making it a useless global
;;; binding. Note that if this comes before the above (require
;;; 'go-mode), it will have no effect.
;; (define-key go-mode-map (kbd "C-c C-e") #'go-gopath-set-gopath)

(require 'company-go)
(setq company-go-show-annotation t)
(push 'company-go company-backends)

(require 'flycheck-gometalinter)
(eval-after-load 'flycheck
  (progn
  '(add-hook 'flycheck-mode-hook #'flycheck-gometalinter-setup)
  '(setq flycheck-gometalinter-disable-linters '("gotype" "gocyclo"))))

;; This tends to crap out when using home libraries not in $GOROOT. Turns out
;; $GOPATH doesn't play nice with many linters.
;; (setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

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

;; (require 'go-complete)
;; (add-hook 'completion-at-point-functions 'go-complete-at-point)

(require 'rats)
;;; Keeping this handy in case I need it for one of my modes.
;;; A few go-modes don't play nice if you aren't editing a file -- as is
;;; the case when you are working in a *scratch* buffor for Go.
;; (defun my-go-hook ()
;;   (when buffer-file-name
;;     (setq-local company-backends '(company-go))))

