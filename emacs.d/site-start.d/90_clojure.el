;;; Clojure setup.
;; require or autoload paredit-mode
(add-hook 'clojure-mode-hook #'paredit-mode)

;; require or autoload smartparens
(add-hook 'clojure-mode-hook #'smartparens-strict-mode)

(eval-after-load 'flycheck '(flycheck-clojure-setup))

