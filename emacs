(autoload 'my-site-start "~/.emacs.d/my-site-start.el" nil t)
(my-site-start "~/.emacs.d/site-start.d/")
(setq tramp-shell-prompt-pattern "^[^$>\n]*[#$%>] *\\(\[[0-9;]*[a-zA-Z] *\\)*")


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(fill-column 80)
 '(viper-ESC-moves-cursor-back t)
 '(viper-auto-indent t)
 '(viper-ex-style-editing nil)
 '(viper-ex-style-motion nil)
 '(viper-insert-state-cursor-color nil)
 '(viper-shift-width 4)
 '(viper-vi-style-in-minibuffer nil)
 '(viper-want-ctl-h-help t)
 '(viper-want-emacs-keys-in-vi nil)
 '(w32shell-cygwin-bin "C:\\cygwin\\bin")
 '(w32shell-shell (quote cygwin)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
