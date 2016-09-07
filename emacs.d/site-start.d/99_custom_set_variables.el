;; Seems I can't get away from having one of these. It more than slightly breaks the approach I was trying to do with
;; init files, buuut. Settle for a crummy solution for now.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-ghc-show-info t)
 '(custom-safe-themes
   (quote
    ("18a33cdb764e4baf99b23dcd5abdbf1249670d412c6d3a8092ae1a7b211613d5" "9864c2e956c25b3098fbc935ba0969e333dd74ecd7a1013c8dd39a6c171e1cca" default)))
'(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)
'(haskell-process-suggest-remove-import-lines t)
'(haskell-process-auto-import-loaded-modules t)
'(haskell-process-log t)
'(haskell-process-type 'stack-ghci)
'(haskell-stylish-on-save t)
'(haskell-tags-on-save t)
 '(ecb-options-version "2.40")
 '(package-selected-packages
   (quote
    (hasky-extensions clojure-mode magit swiper swiper-helm runner vdiff winring window-layout which-key warm-night-theme vline visual-regexp-steroids vim-empty-lines-mode tramp-term telephone-line tabkey2 tabbar-ruler symon sublime stickyfunc-enhance ssh-file-modes srefactor spu smartscan smart-whitespace-comment-fixup sicp scratch-persist scratch-ext sane-term rpn-calc rpm-spec-mode roguel-ike relative-line-numbers register-list rats rainbow-delimiters quickref quelpa puppet-mode prodigy powerline-evil popwin plsense persistent-soft perlcritic pdf-tools paradox pallet orgit org-table-comment org-projectile org-download org-dotemacs org-dashboard nurumacs nssh-n nssh names miniedit menu-bar+ math-at-point markdown-mode+ mark magit-tramp magit-svn magit-gitflow magit-gh-pulls magit-find-file magit-filenotify magic-filetype macro-utils lively linum-relative ledger-mode judge-indent iregister intero insert-shebang init-loader indent-guide ido-vertical-mode idle-highlight-mode hook-utils hl-spotlight hl-line+ hindent highline highlight-sexp help+ helm-projectile helm-package helm-open-github helm-make helm-hoogle helm-helm-commands helm-hayoo helm-gtags helm-go-package helm-gitignore helm-git helm-ghc helm-fuzzy-find helm-flyspell helm-flycheck helm-descbinds helm-company helm-commandlinefu helm-cider-history helm-c-yasnippet helm-anything helm-ag hayoo haskell-snippets guru-mode govet gotham-theme gotests gotest gore-mode golint golden-ratio go-snippets go-scratch go-projectile go-gopath go-errcheck go-dlv go-direx go-complete gnomenm git-messenger git-draft ghci-completion ghc-imported-from ggtags fzf fold-this flyspell-correct-helm flymd flylisp flycheck-stack flycheck-rust flycheck-pos-tip flycheck-ledger flycheck-hdevtools flycheck-haskell flycheck-gometalinter flycheck-ghcmod flycheck-color-mode-line flycheck-clojure flycheck-cask flycheck-bashate fish-mode firecode-theme expand-region exec-path-from-shell evil-visual-mark-mode evil-vimish-fold evil-tutor evil-tabs evil-surround evil-space evil-smartparens evil-search-highlight-persist evil-org evil-mc evil-matchit evil-god-state evil-exchange evil-cleverparens evil-args evil-anzu erefactor emamux elisp-cache el-sprunge ecb ebal dsvn dropbox dockerfile-mode docker discover-my-major discover dired-rainbow dired-quick-sort dired+ diminish diffview diff-hl decide cycle-quotes cus-edit+ crontab-mode counsel config-block company-try-hard company-statistics company-shell company-quickhelp company-math company-irony-c-headers company-irony company-go company-ghci company-ghc company-flx company-cabal company-c-headers company-ansible common-lisp-snippets comment-dwim-2 commander clojure-snippets cfengine-code-style caskxy browse-kill-ring+ browse-at-remote bookmark+ bm better-registers benchmark-init bash-completion auto-yasnippet ansible-doc ansible airline-themes ag ack-menu ace-window ace-popup-menu ace-jump-helm-line ace-jump-buffer ace-isearch ace-flyspell))))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 151 :width normal :foundry "PfEd" :family "Inconsolata"))))
 '(col-highlight ((t (:background "gray15"))))
 '(company-scrollbar-bg ((t (:background "#191919"))))
 '(company-scrollbar-fg ((t (:background "#0c0c0c"))))
 '(company-tooltip ((t (:inherit default :background "#050505"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
 '(hl-line ((t (:background "gray15"))))
 '(linum ((t (:inherit (shadow default) :foreground "dim gray" :width normal)))))
