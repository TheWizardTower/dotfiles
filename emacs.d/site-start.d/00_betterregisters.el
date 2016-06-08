(require 'better-registers)
(better-registers-install-save-registers-hook)
(load better-registers-save-file)

(require 'register-list)
(define-key better-registers-r-map "l" 'list-registers)
