(require 'tramp)
;;; Tramp needs to be taught how to handle SSH into prod.
(setq tramp-shell-prompt-pattern "^[^$>\n]*[#$%>] *\\(\[[0-9;]*[a-zA-Z] *\\)*")

