;; Needed for windows installs. Linux has this as a system package, Windows is
;; not so enlightened.
(add-to-list 'load-path' "~/.emacs.d/color-theme-6.6.0/")

;;(setq explicit-shell-file-name "cmdproxy.exe")
;;(setq shell-command-switch "-c")
;;(setq w32-quote-process-args nil)
;; For subprocesses invoked via the shell
;; (e.g., "shell -c command")

(setq w32-quote-process-args t)

;;(setq explicit-shell-file-name "C:/cygwin/bin/bash")

;;(setq shell-file-name explicit-shell-file-name)

;; Shell extension script.

;;(setenv "PATH" (concat "c:/cygwin/bin;" (getenv "PATH")))
;;(setq exec-path (cons "c:/cygwin/bin/" exec-path))
;; (require 'cygwin-mount)
;; (cygwin-mount-activate)
