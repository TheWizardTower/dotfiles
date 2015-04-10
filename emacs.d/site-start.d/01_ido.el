(require 'ido)
(require 'ido-vertical-mode)
(ido-mode t)
(ido-vertical-mode 1)

; These kill ido-vertical mode somehow.
; (require 'ido-better-flex)
; (ido-better-flex/enable)

(require 'ido-hacks)

; This isn't found for some reason.
;(require 'ido-preview)

 (add-hook 'ido-setup-hook
   (lambda()
     (define-key ido-completion-map (kbd "C-M-p") (lookup-key ido-completion-map (kbd "C-p")))
     (define-key ido-completion-map (kbd "C-M-n") (lookup-key ido-completion-map (kbd "C-n"))) ; currently, this makes nothing. Maybe they'll make C-n key lately.
     (define-key ido-completion-map (kbd "C-p") 'ido-preview-backward)
     (define-key ido-completion-map (kbd "C-n") 'ido-preview-forward)))


(require 'ido-load-library)

(autoload 'idomenu "idomenu" nil t)

; The following two lines doesn't seem to take effect. Debug.
(define-key global-map (kbd "C-c l") 'ido-load-library)
(defalias 'load-library 'ido-load-library)

