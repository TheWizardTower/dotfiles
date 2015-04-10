;(server-start)
;(desktop-save-mode 1)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(require 'init-loader)
(init-loader-load "~/.emacs.d/site-start.d/")

(require 'color-theme)
(color-theme-solarized)

(setq tramp-shell-prompt-pattern "^[^$>\n]*[#$%>] *\\(\[[0-9;]*[a-zA-Z] *\\)*")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 83 :width normal :foundry "unknown" :family "Inconsolata"))))
 '(col-highlight ((t (:background "#073642")))))


(tabbar-mode)

;; Highlight matching parenthesis.
(show-paren-mode 1)

(require 'go-mode)
(add-hook 'go-mode 'linum-mode)

(require 'undo-tree)
(global-undo-tree-mode)
