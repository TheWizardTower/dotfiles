(require 'php+-mode)
(php+-mode-setup)

(add-hook 'php-mode-hook
         '(lambda ()
            (require 'company-php)
            (company-mode t)
            (add-to-list 'company-backends 'company-ac-php-backend )))


(require 'inf-php)


(require 'twig-mode)
