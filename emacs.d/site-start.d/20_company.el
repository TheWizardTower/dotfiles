(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(company-quickhelp-mode 1)

(require 'company-statistics)
(company-statistics-mode)

(eval-after-load 'company
  '(progn
     (define-key company-mode-map (kbd "C-:") 'helm-company)
     (define-key company-active-map (kbd "C-:") 'helm-company)
     (company-flx-mode +1)))
