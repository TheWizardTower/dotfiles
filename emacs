;(server-start)

;; This is usually an annoyance. Comment it out until I get the server start stuff working.
;(desktop-save-mode 1)

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

(crosshairs-mode)

(add-to-list 'auto-mode-alist '("Cask" . emacs-lisp-mode))
(add-to-list 'auto-mode-alist '("emacs" . emacs-lisp-mode))

(require 'init-loader)
(init-loader-load "~/.emacs.d/site-start.d/")

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))




(setq max-specpdl-size 5000)  ; default is 1000, reduce the backtrace level
(setq debug-on-error t)    ; now you should get a backtrace

; Not yet configured.
;(autoload 'wl "wl" "Wanderlust" t)

(require 'scratch-ext)
(require 'scratch-persist)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-ispell-fuzzy-limit 4)
 '(ac-ispell-requires 4)
 '(custom-safe-themes
   (quote
    ("523d5a027e2f378ad80f9b368db450f4a5fa4a159ae11d5b66ccd78b3f5f807d" default)))
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 83 :width normal :foundry "unknown" :family "Inconsolata"))))
 '(col-highlight ((t (:background "#073642")))))
