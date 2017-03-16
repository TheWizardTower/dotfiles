(require 'fish-mode)



(add-hook 'fish-mode-hook (lambda ()
          (add-hook 'before-save-hook 'fish_indent-before-save)
          (setq tab-width 4)))
