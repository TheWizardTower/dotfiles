(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-buffer-choice t)

(tool-bar-mode -1)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(require 'caskxy)

(add-to-list 'auto-mode-alist '("Cask" . emacs-lisp-mode))
(add-to-list 'auto-mode-alist '("emacs" . emacs-lisp-mode))

(require 'exec-path-from-shell)
(exec-path-from-shell-copy-env "SSH_AGENT_PID")
(exec-path-from-shell-copy-env "SSH_AUTH_SOCK")
(setenv "SSH_SOCK_LINK" (concat (getenv "HOME") "/.ssh/auth_sock_simlink"))

(require 'init-loader)
(init-loader-load "~/.emacs.d/site-start.d/")

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

;;;(setq max-specpdl-size 5000)  ; default is 1000, reduce the backtrace level
;;;(setq debug-on-error t)       ; now you should get a backtrace
;;; Not yet configured.
;;;(autoload 'wl "wl" "Wanderlust" t)

(require 'scratch-ext)
(require 'scratch-persist)

(require 'airline-themes)
(load-theme 'airline-serene)
