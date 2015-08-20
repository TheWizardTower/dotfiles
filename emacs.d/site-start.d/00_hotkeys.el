;; Set goto-line shortcut.
(define-key global-map "\M-g" 'goto-line)

(mouse-wheel-mode t)

(global-set-key (kbd "M-;") 'comment-dwim-2)

;; Align with spaces only
(defadvice align-regexp (around align-regexp-with-spaces)
  "Never use tabs for alignment."
  (let ((indent-tabs-mode nil))
    ad-do-it))
(ad-activate 'align-regexp)
(global-unset-key (kbd "C-x i"))
(global-set-key (kbd "C-x i") 'align-regexp)

(global-set-key (kbd "C-x G") 'magit-status)

(global-unset-key (kbd "C-x o"))
(global-set-key (kbd "C-x o") 'ace-window)
