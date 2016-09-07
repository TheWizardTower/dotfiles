;; Seems I can't get away from having one of these. It more than slightly breaks the approach I was trying to do with
;; init files, buuut. Settle for a crummy solution for now.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-ghc-show-info t)
 '(custom-safe-themes
   (quote
    ("18a33cdb764e4baf99b23dcd5abdbf1249670d412c6d3a8092ae1a7b211613d5" "9864c2e956c25b3098fbc935ba0969e333dd74ecd7a1013c8dd39a6c171e1cca" default)))
 '(ecb-options-version "2.40"))
'(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)
'(haskell-process-suggest-remove-import-lines t)
'(haskell-process-auto-import-loaded-modules t)
'(haskell-process-log t)
'(haskell-process-type 'stack-ghci)
'(haskell-stylish-on-save t)
'(haskell-tags-on-save t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 151 :width normal :foundry "PfEd" :family "Inconsolata"))))
 '(col-highlight ((t (:background "gray15"))))
 '(company-scrollbar-bg ((t (:background "#191919"))))
 '(company-scrollbar-fg ((t (:background "#0c0c0c"))))
 '(company-tooltip ((t (:inherit default :background "#050505"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
 '(hl-line ((t (:background "gray15"))))
 '(linum ((t (:inherit (shadow default) :foreground "dim gray" :width normal)))))
