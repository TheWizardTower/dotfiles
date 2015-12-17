(require 'color)

;;; My custom Inconsolata font.
(let ((bg (face-attribute 'default :background)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 83 :width normal :foundry "unknown" :family "Inconsolata"))))
 '(linum ((t (:inherit (shadow default) :foreground "dim gray" :width normal))))
 '(col-highlight ((t (:background "gray15"))))
 '(hl-line ((t (:background "gray15"))))
 `(company-tooltip ((t (:inherit default :background ,(color-lighten-name bg 2)))))
     `(company-scrollbar-bg ((t (:background ,(color-lighten-name bg 10)))))
     `(company-scrollbar-fg ((t (:background ,(color-lighten-name bg 5)))))
     `(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
     `(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 ))
