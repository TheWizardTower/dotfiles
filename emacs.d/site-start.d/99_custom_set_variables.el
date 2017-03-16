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
    ("e30f381d0e460e5b643118bcd10995e1ba3161a3d45411ef8dfe34879c9ae333" "18a33cdb764e4baf99b23dcd5abdbf1249670d412c6d3a8092ae1a7b211613d5" "9864c2e956c25b3098fbc935ba0969e333dd74ecd7a1013c8dd39a6c171e1cca" default)))
 '(ecb-options-version "2.40")
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages))
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type (quote stack-ghci))
 '(haskell-stylish-on-save t)
 '(haskell-tags-on-save t)
 '(package-selected-packages
   (quote
    (
ace-flyspell
ace-isearch
ace-jump-buffer
ace-jump-helm-line
ace-popup-menu
ace-window
achievements
ack
ack-menu
ag
aggressive-fill-paragraph
aggressive-indent
ack-menu
ag
airline-themes
ansible
ansible-doc
auto-yasnippet
bash-completion
benchmark-init
better-registers
bm
bookmark+
browse-at-remote
browse-kill-ring+
caskxy
cfengine-code-style
clojure-mode
clojure-snippets
commander
comment-dwim-2
common-lisp-snippets
company-ansible
company-c-headers
company-cabal
company-flx
company-ghc
company-ghci
company-go
company-irony
company-irony-c-headers
company-math
company-quickhelp
company-shell
company-statistics
company-try-hard
config-block
counsel
crontab-mode
cus-edit+
cycle-quotes
decide
diff-hl
diffview
diminish
dired+
dired-quick-sort
dired-rainbow
discover
discover-my-major
docker
dockerfile-mode
dropbox
dsvn
ebal
ecb
el-sprunge
elisp-cache
emamux
erefactor
evil-anzu
evil-args
evil-cleverparens
evil-exchange
evil-god-state
evil-matchit
evil-mc
evil-org
evil-search-highlight-persist
evil-smartparens
evil-space
evil-surround
evil-tabs
evil-tutor
evil-vimish-fold
evil-visual-mark-mode
exec-path-from-shell
expand-region
firecode-theme
fish-mode
flycheck-bashate
flycheck-cask
flycheck-clojure
flycheck-color-mode-line
flycheck-ghcmod
flycheck-gometalinter
flycheck-haskell
flycheck-hdevtools
flycheck-ledger
flycheck-pos-tip
flycheck-rust
flycheck-stack
flylisp
flymd
flyspell-correct-helm
fold-this
fortune-cookie
fzf
ggtags
ghc-imported-from
ghci-completion
git-draft
git-messenger
gnomenm
go-complete
go-direx
go-dlv
go-errcheck
go-gopath
go-projectile
go-scratch
go-snippets
golden-ratio
golint
gore-mode
gotest
gotests
gotham-theme
govet
guru-mode
haskell-snippets
hasky-extensions
hayoo
helm-ag
helm-anything
helm-c-yasnippet
helm-cider-history
helm-commandlinefu
helm-company
helm-descbinds
helm-flycheck
helm-flyspell
helm-fuzzy-find
helm-ghc
helm-git
helm-gitignore
helm-go-package
helm-gtags
helm-hayoo
helm-helm-commands
helm-hoogle
helm-make
helm-open-github
helm-package
helm-projectile
help+
highlight-sexp
highline
hindent
hl-line+
hl-spotlight
hook-utils
idle-highlight-mode
ido-vertical-mode
indent-guide
init-loader
insert-shebang
intero
iregister
ledger-mode
linum-relative
lively
macro-utils
magic-filetype
magit
magit-filenotify
magit-find-file
magit-gh-pulls
magit-gitflow
magit-svn
magit-tramp
mark
markdown-mode+
math-at-point
menu-bar+
miniedit
names
nssh
nssh-n
nurumacs
org-dashboard
org-dotemacs
org-download
org-projectile
org-table-comment
orgit
pallet
paradox
pdf-tools
perlcritic
persistent-soft
php-auto-yasnippets
php-eldoc
php-refactor-mode
php-scratch
plsense
popwin
powerline-evil
prodigy
puppet-mode
quelpa
quickref
rainbow-delimiters
rats
register-list
relative-line-numbers
roguel-ike
rpm-spec-mode
rpn-calc
runner
sane-term
scratch-ext
scratch-persist
sicp
smart-whitespace-comment-fixup
smartscan
spu
srefactor
ssh-file-modes
stickyfunc-enhance
sublime
swiper
swiper-helm
symon
tabbar-ruler
tabkey2
telephone-line
top-mode
tramp-term
trr
tramp-term
vdiff
vim-empty-lines-mode
visual-regexp-steroids
vline
warm-night-theme
which-key
window-layout
winring
))))
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
