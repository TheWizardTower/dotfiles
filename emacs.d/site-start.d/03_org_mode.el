(require 'org-install)

 ;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(global-font-lock-mode 1)                     ; for all buffers
(add-hook 'org-mode-hook 'turn-on-font-lock)  ; Org buffers only

(setq org-log-done t)

(setq org-agenda-files (list "~/org/work.org"
                             "~/org/school.org"
                             "~/org/home.org" ))

;; Adding remember to the set, too. Got this from http://members.optusnet.com.au/~charles57/GTD/remember.html

;; (org-remember-insinuate)
(setq org-directory "~/org/")
(setq org-default-notes-file "~/org/notes.org")
;; (setq remember-annotation-functions '(org-remember-annotation))
;; (setq remeber-handler-functions '(org-remember-handler))
;; (add-hook 'remember-mode-hook 'org-remember-apply-template)
(define-key global-map "\C-cr" 'org-remember)

