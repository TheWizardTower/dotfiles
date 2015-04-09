(require 'ido)
(ido-mode t)

(require 'ido-hacks)

(require 'ido-preview)

 (add-hook 'ido-setup-hook
   (lambda()
     (define-key ido-completion-map (kbd "C-M-p") (lookup-key ido-completion-map (kbd "C-p")))
     (define-key ido-completion-map (kbd "C-M-n") (lookup-key ido-completion-map (kbd "C-n"))) ; currently, this makes nothing. Maybe they'll make C-n key lately.
     (define-key ido-completion-map (kbd "C-p") 'ido-preview-backward)
     (define-key ido-completion-map (kbd "C-n") 'ido-preview-forward)))


(require 'ido-load-library)

(autoload 'idomenu "idomenu" nil t)

(global-set-key [(meta x)] (lambda ()
                             (interactive)
                             (or (boundp 'smex-cache)
                                 (smex-initialize))
                             (global-set-key [(meta x)] 'smex)
                             (smex)))

(global-set-key [(shift meta x)] (lambda ()
                                   (interactive)
                                   (or (boundp 'smex-cache)
                                       (smex-initialize))
                                   (global-set-key [(shift meta x)] 'smex-major-mode-commands)
                                   (smex-major-mode-commands)))


(define-key global-map (kbd "C-c l") 'ido-load-library)
(defalias 'load-library 'ido-load-library)

(autoload 'idomenu "idomenu" nil t)

(require 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode 1)


(require 'ido-better-flex)
(ido-better-flex/enable)
