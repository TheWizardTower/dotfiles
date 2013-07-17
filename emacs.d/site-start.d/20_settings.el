;; Define function keys.

(global-set-key [f9] 'defining-kbd-macro)
(global-set-key [f10] 'end-kbd-macro)
(global-set-key [f11] 'call-last-kbd-macro)

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

;; Display the filename in the window title.
(setq frame-title-format '(buffer-file-name "%f" ("%b")))

;; Fix indentation sytle.

(require 'cc-mode)
;; (c-set-offset 'substatement-open 0)
(c-toggle-hungry-state 1)

;; Indent with spaces.

(setq-default indent-tabs-mode nil)

;; ===== Set standard indent to 4

(setq standard-indent 4)

(setq tab-width 8)
(setq c-basic-offset 4)


(defun my-c-mode-common-hook ()
  ;; my customizations for all of c-mode and related modes
  (setq indent-tabs-mode nil)
  (c-set-offset 'substatement-open 0)
  )
(add-hook 'c-mode-hook 'my-c-mode-common-hook)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(fill-column 80)
 '(viper-ex-style-motion nil)
 '(viper-shift-width 4))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; Enable line numbered viewing
;; (require 'linum)

;; Enable auto-indent
(add-hook 'c-mode-common-hook '(lambda ()
      (local-set-key (kbd "RET") 'newline-and-indent)))

(setq c++-mode-hook 'turn-on-auto-fill)

;; ===== Turn on Auto Fill mode automatically in all modes =====

;; Auto-fill-mode the the automatic wrapping of lines and insertion of
;; newlines when the cursor goes over the column limit.

;; This should actually turn on auto-fill-mode by default in all major
;; modes. The other way to do this is to turn on the fill for specific modes
;; via hooks.

(setq-default auto-fill-mode 1)
(setq-default auto-fill-function 'do-auto-fill)

;; ===== Set the highlight current line minor mode =====

;; In every buffer, the line which contains the cursor will be fully
;; highlighted

(global-hl-line-mode 1)

;; Higlight the current line the cursor is on.
(add-hook 'text-mode-hook (lambda () (hl-line-mode 1)))

;; Enable syntax highlighting
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)


(add-hook 'comint-output-filter-functions
    'shell-strip-ctrl-m nil t)
(add-hook 'comint-output-filter-functions
    'comint-watch-for-password-prompt nil t)


(add-hook 'find-file-hook (lambda () (linum-mode 1)))

(setq fill-number 80)

;; use only one desktop
(setq desktop-path '("~/.emacs.d/"))
(setq desktop-dirname "~/.emacs.d/")
(setq desktop-base-file-name "emacs-desktop")

;; remove desktop after it's been read
(add-hook 'desktop-after-read-hook
	  '(lambda ()
	     ;; desktop-remove clears desktop-dirname
	     (setq desktop-dirname-tmp desktop-dirname)
	     (desktop-remove)
	     (setq desktop-dirname desktop-dirname-tmp)))

(defun saved-session ()
  (file-exists-p (concat desktop-dirname "/" desktop-base-file-name)))

;; use session-restore to restore the desktop manually
(defun session-restore ()
  "Restore a saved emacs session."
  (interactive)
  (if (saved-session)
      (desktop-read)
    (message "No desktop found.")))

;; use session-save to save the desktop manually
(defun session-save ()
  "Save an emacs session."
  (interactive)
  (if (saved-session)
      (if (y-or-n-p "Overwrite existing desktop? ")
	  (desktop-save-in-desktop-dir)
	(message "Session not saved."))
  (desktop-save-in-desktop-dir)))

;; ask user whether to restore desktop at start-up
(add-hook 'after-init-hook
	  '(lambda ()
	     (if (saved-session)
		 (if (y-or-n-p "Restore desktop? ")
		     (session-restore)))))

;; Automatically save and restore sessions

(setq-default indicate-empty-lines t)          ; Show empty lines
(setq mouse-wheel-progressive-speed nil)



;; Always have spellcheck on.
(setq-default flyspell-mode t)

(display-time)
