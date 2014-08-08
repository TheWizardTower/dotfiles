(require 'go-autocomplete)
(require 'auto-complete-config)

(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)

(require 'yasnippet) ;; not yasnippet-bundle
(yas-global-mode 1)
