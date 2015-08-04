;(server-start)

;; This is usually an annoyance. Comment it out until I get the server start stuff working.
;(desktop-save-mode 1)

;(setq 'flycheck-emacs-lisp-initialize-packages 'auto)
;(setq 'flycheck-emacs-lisp-package-user-dir 'dotfiles/)

(setq inhibit-startup-message t)

(tool-bar-mode -1)

;; Transparency looks *awful* on the Lenovo I have. Disable for now.
;;(set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
; (set-frame-parameter (selected-frame) 'alpha '(85 50))
; (add-to-list 'default-frame-alist '(alpha 85 50))

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(require 'caskxy)

(require 'browse-kill-ring+)
(add-to-list 'auto-mode-alist '("Cask" . emacs-lisp-mode))
(add-to-list 'auto-mode-alist '("emacs" . emacs-lisp-mode))

(require 'init-loader)
(init-loader-load "~/.emacs.d/site-start.d/")

(require 'color-theme)

(require 'gotham-theme)

;;; Flycheck config
(add-hook 'after-init-hook #'global-flycheck-mode)

(eval-after-load 'flycheck
  '(custom-set-variables
    '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))

(require 'flycheck-color-mode-line)

(eval-after-load "flycheck"
  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))


;;; Flyspell mode. Spellchecking.
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'flyspell-prog-mode)


;;; Tramp needs to be taught how to handle SSH into prod.
(setq tramp-shell-prompt-pattern "^[^$>\n]*[#$%>] *\\(\[[0-9;]*[a-zA-Z] *\\)*")

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

;; Set goto-line shortcut.
(define-key global-map "\M-g" 'goto-line)

(mouse-wheel-mode t)

(global-set-key (kbd "M-;") 'comment-dwim-2)

;;; Org mode configs.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

;;; Clojure setup.
;; require or autoload paredit-mode
(add-hook 'clojure-mode-hook #'paredit-mode)

;; require or autoload smartparens
(add-hook 'clojure-mode-hook #'smartparens-strict-mode)

(eval-after-load 'flycheck '(flycheck-clojure-setup))


;;; My custom Inconsolata font.
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 83 :width normal :foundry "unknown" :family "Inconsolata"))))
 '(col-highlight ((t (:background "#073642")))))

(eval-after-load 'flycheck '(require 'flycheck-ghcmod))

(setq-default indent-tabs-mode nil)

;; Align with spaces only
(defadvice align-regexp (around align-regexp-with-spaces)
  "Never use tabs for alignment."
  (let ((indent-tabs-mode nil))
    ad-do-it))
(ad-activate 'align-regexp)
(global-unset-key (kbd "C-x i"))
(global-set-key (kbd "C-x i") 'align-regexp)


;; Highlight matching parenthesis.
(show-paren-mode 1)

(require 'undo-tree)
(global-undo-tree-mode)

(column-number-mode)

(crosshairs-mode)


;;; Auto-Complete config
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

;; Completion words longer than 4 characters
(custom-set-variables
 '(ac-ispell-requires 4)
 '(ac-ispell-fuzzy-limit 4))

(eval-after-load "auto-complete"
  '(progn
     (ac-ispell-setup)))

(add-hook 'git-commit-mode-hook 'ac-ispell-ac-setup)
(add-hook 'mail-mode-hook 'ac-ispell-ac-setupa)

(add-hook 'interactive-haskell-mode-hook 'ac-haskell-process-setup)
(add-hook 'haskell-interactive-mode-hook 'ac-haskell-process-setup)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'haskell-interactive-mode))

(eval-after-load 'haskell-mode
  '(define-key haskell-mode-map (kbd "C-c C-d") 'ac-haskell-process-popup-doc))

;;; YASnippet
(require 'yasnippet)
(add-hook 'prog-mode-hook #'yas-minor-mode)
;(yas-global-mode 1)

(require 'log4e)


;;; Helm
(require 'helm)
(require 'helm-config)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t)

(helm-mode 1)
(eval-after-load 'flycheck
   '(define-key flycheck-mode-map (kbd "C-c ! h") 'helm-flycheck))

(require 'projectile)
(projectile-global-mode)
(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)

(eval-after-load "menu-bar" '(require 'menu-bar+))


;;; Golang
(setq exec-path (cons "/usr/bin" exec-path))
(add-to-list 'exec-path "/home/amccullough/gocode/bin")

;(require 'go-mode)
(add-hook 'go-mode 'linum-mode)
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



(require 'e2wm)
(global-set-key (kbd "M-+") 'e2wm:start-management)
(global-set-key (kbd "M--") 'e2wm:stop-management)

;(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(setq max-specpdl-size 5000)  ; default is 1000, reduce the backtrace level
(setq debug-on-error t)    ; now you should get a backtrace

(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

;;; Powerline
(require 'powerline)
(powerline-default-theme)

; Not yet configured.
;(autoload 'wl "wl" "Wanderlust" t)
