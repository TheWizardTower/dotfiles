(require 'cfengine)
(add-to-list 'auto-mode-alist '("\\.cf\\'" . cfengine-auto-mode))

(add-hook 'cfengine3-mode-hook 'turn-on-eldoc-mode)
