;; cperl-mode is better than perl-mode
(defalias 'perl-mode 'cperl-mode)

(require 'plsense)
(plsense-config-default)
(setq plsense-popup-help-key "C-:")
(setq plsense-display-help-buffer-key "M-:")
(setq plsense-jump-to-definition-key "C->")
