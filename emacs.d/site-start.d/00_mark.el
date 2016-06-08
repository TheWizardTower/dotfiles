(require 'mark)

;; This would probably be more appropriate or useful as a Hydra.
(global-set-key (kbd "<C-s-right>") 'forward-mark)
(global-set-key (kbd "<C-s-left>") 'backward-mark)
(global-set-key (kbd "<C-s-down>") 'show-marks)

