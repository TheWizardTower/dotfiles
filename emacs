;(server-start)

;; This is usually an annoyance. Comment it out until I get the server start stuff working.
;(desktop-save-mode 1)

(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-buffer-choice t)

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


(crosshairs-mode)
;;;(set-face-attribute 'default nil :background "gray15")
(set-face-attribute 'hl-line nil :foreground nil :background "gray15")
;(set-face-attribute 'col-highlight nil :foreground nil :background "gray5")


(require 'scratch-ext)
(require 'scratch-persist)
