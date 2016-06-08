(require 'better-registers)
(better-registers-install-save-registers-hook)
(load better-registers-save-file)

(require 'register-list)
(define-key better-registers-r-map "l" 'list-registers)

(require 'iregister)
(global-set-key (kbd "M-n") 'iregister-jump-to-next-marker)
(global-set-key (kbd "M-p") 'iregister-jump-to-previous-marker)
(global-set-key (kbd "M-u") 'iregister-point-or-text-to-register)

;; If region is active then `iregister-point-or-text-to-register' command stores a
;; text to any empty register, otherwise it stores a point.

(global-set-key (kbd "M-l") 'iregister-latest-text)
