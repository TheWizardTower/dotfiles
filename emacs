(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/")
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq package-selected-packages
   (quote
    (swiper-helm runner vdiff winring window-layout which-key warm-night-theme vline visual-regexp-steroids vim-empty-lines-mode tramp-term telephone-line tabbar-ruler symon stickyfunc-enhance srefactor spu smartscan sicp scratch-ext sane-term rpn-calc rpm-spec-mode roguel-ike relative-line-numbers register-list rats rainbow-delimiters quickref quelpa puppet-mode prodigy powerline-evil popwin plsense persistent-soft pdf-tools paradox pallet orgit org-table-comment org-projectile org-download org-dotemacs org-dashboard names miniedit menu-bar+ markdown-mode+ magit-svn magit-gitflow magit-gh-pulls magit-find-file magit-filenotify magic-filetype lively linum-relative ledger-mode judge-indent iregister intero insert-shebang init-loader indent-guide ido-vertical-mode idle-highlight-mode hl-spotlight hl-line+ hindent help+ helm-projectile helm-package helm-open-github helm-make helm-hoogle helm-helm-commands helm-hayoo helm-gtags helm-go-package helm-gitignore helm-git helm-ghc helm-fuzzy-find helm-flyspell helm-flycheck helm-descbinds helm-company helm-commandlinefu helm-cider-history helm-c-yasnippet helm-anything helm-ag hayoo haskell-snippets guru-mode govet gotham-theme gotest gore-mode golint golden-ratio go-snippets go-scratch go-projectile go-gopath go-errcheck go-dlv go-direx go-complete gnomenm git-messenger ghci-completion ghc-imported-from ggtags fzf fold-this flyspell-correct-helm flymd flylisp flycheck-stack flycheck-rust flycheck-pos-tip flycheck-ledger flycheck-hdevtools flycheck-haskell flycheck-gometalinter flycheck-ghcmod flycheck-color-mode-line flycheck-clojure flycheck-cask flycheck-bashate fish-mode firecode-theme expand-region exec-path-from-shell evil-visual-mark-mode evil-vimish-fold evil-tutor evil-tabs evil-surround evil-space evil-smartparens evil-search-highlight-persist evil-org evil-mc evil-matchit evil-god-state evil-exchange evil-cleverparens evil-args evil-anzu erefactor emamux el-sprunge ecb ebal dsvn dropbox dockerfile-mode docker discover-my-major discover dired-rainbow dired+ diminish diffview diff-hl decide cycle-quotes cus-edit+ crontab-mode counsel company-try-hard company-statistics company-shell company-quickhelp company-math company-irony-c-headers company-irony company-go company-ghci company-ghc company-flx company-cabal company-c-headers company-ansible common-lisp-snippets comment-dwim-2 commander clojure-snippets cfengine-code-style caskxy browse-kill-ring+ browse-at-remote bookmark+ bm better-registers benchmark-init bash-completion auto-yasnippet ansible-doc ansible airline-themes ag ack-menu ace-window ace-popup-menu ace-jump-helm-line ace-jump-buffer ace-isearch ace-flyspell)))

;;; ;; install required
;;; (dolist (package package-selected-packages)
;;;   (unless (package-installed-p package)
;;;     (package-install package)))

;;; ;; upgrade installed
;;; (save-window-excursion
;;;   (package-list-packages t)
;;;   (package-menu-mark-upgrades)
;;;   (package-menu-execute t))

;;; The flames make it go faster.
(setq gc-cons-threshold most-positive-fixnum)
(add-hook 'after-init-hook (lambda () (setq gc-cons-threshold 800000)))

(setq-default
 inhibit-splash-screen t
 indicate-empty-lines t
 inhibit-startup-message t
 initial-buffer-choice t)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode '(10 . 10))

(require 'benchmark-init)

(add-to-list 'auto-mode-alist '("Cask" . emacs-lisp-mode))
(add-to-list 'auto-mode-alist '("emacs" . emacs-lisp-mode))
(add-to-list 'auto-mode-alist '("bashrc" . shell-script-mode))
(add-to-list 'auto-mode-alist '("zshrc" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\.twig\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(require 'diminish)

(require 'undo-tree)
(global-undo-tree-mode)
(diminish 'undo-tree-mode)

(require 'exec-path-from-shell)
(exec-path-from-shell-copy-env "SSH_AGENT_PID")
(exec-path-from-shell-copy-env "SSH_AUTH_SOCK")
(setenv "SSH_SOCK_LINK" (concat (getenv "HOME") "/.ssh/auth_sock_simlink"))

(require 'init-loader)
(init-loader-load "~/.emacs.d/site-start.d/")

;;;(setq max-specpdl-size 5000)  ; default is 1000, reduce the backtrace level
;;;(setq debug-on-error t)       ; now you should get a backtrace
;;; Not yet configured.
;;;(autoload 'wl "wl" "Wanderlust" t)

(require 'scratch-ext)

(require 'airline-themes)
(load-theme 'airline-serene)

;;;(global-relative-line-numbers-mode)

;;; Set the color of the cursor depending on the evil mode you're in.
(setq evil-normal-state-cursor '(box "red"))
(setq evil-visual-state-cursor '(box "blue"))
(setq evil-motion-state-cursor '(box "green"))
(setq evil-emacs-state-cursor '(box "white"))

(setq airline-utf-glyph-separator-left      #xe0b0
      airline-utf-glyph-separator-right     #xe0b2
      airline-utf-glyph-subseparator-left   #xe0b1
      airline-utf-glyph-subseparator-right  #xe0b3
      airline-utf-glyph-branch              #xe0a0
      airline-utf-glyph-readonly            #xe0a2
      airline-utf-glyph-linenumber          #xe0a1)

(require 'winring)
(winring-initialize)

(require 'spu)
(spu-package-upgrade-daily)
