(add-to-list 'load-path "~/.emacs.d/site-lisp")
(let ((default-directory "~/.emacs.d/site-lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

(add-to-list 'load-path "~/.emacs.d/elpa")
(let ((default-directory "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))

;; load el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

(setq my-packages
      '(ac-anything2 browse-kill-ring browse-kill-ring+ cl-lib col-highlight color-theme color-theme-desert color-theme-solarized color-theme-tango color-theme-tango-2 color-theme-tangotango crosshairs dash el-get epl f flymake flyspell follow-mouse highline hl-line+ ido-hacks ido-load-library ido-preview ido-vertical-mode idomenu init-auto-complete init-flymake init-golang init-haskell init-icicles init-ide init-ido init-speedbar init-tabbar init-yasnippet linum-relative mc menu-bar+ package pkg-info s shime smex sr-speedbar tabbar vline yasnippet yasnippet-config))

(el-get 'sync my-packages)

;; load CEDET
(load-file "~/.emacs.d/cedet-1.1/common/cedet.el")
(global-ede-mode 1)                      ; Enable the Project management system
(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
(global-srecode-minor-mode 1)            ; Enable template insertion menu

(global-semanticdb-minor-mode)
(global-semantic-mru-bookmark-mode)
(global-cedet-m3-minor-mode)
(global-semantic-highlight-func-mode)
(global-semantic-stickyfunc-mode)
(global-semantic-decoration-mode)

(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(color-theme-solarized-dark)

(autoload 'my-site-start "~/.emacs.d/my-site-start.el" nil t)
(my-site-start "~/.emacs.d/site-start.d/")

(setq tramp-shell-prompt-pattern "^[^$>\n]*[#$%>] *\\(\[[0-9;]*[a-zA-Z] *\\)*")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 83 :width normal :foundry "unknown" :family "Inconsolata"))))
 '(col-highlight ((t (:background "#073642")))))


(add-hook 'after-init-hook #'global-flycheck-mode)


;; Always kill the whole line.

(setq kill-whole-line t)

;; Highlight the region between the point and the mark.

(transient-mark-mode t)

;; Highlight matching parenthesis.

(show-paren-mode 1)


;; Set goto-line shortcut.

(define-key global-map "\M-g" 'goto-line)

;; Also show the column number.

(setq column-number-mode t)

;; ========== Support Wheel Mouse Scrolling ==========

(mouse-wheel-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(show-paren-mode t))
