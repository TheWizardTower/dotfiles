;; (require 'pennence)
(require 'evil)
(evil-mode 1)


(require 'evil-args)


;;; Stolen from rrix.
(evil-define-state emacs
  "Emacs state that can be exited with the escape key."
  :tag " <EE> "
  :message "-- EMACS WITH ESCAPE --"
  :input-method t)

(defadvice evil-insert-state (around emacs-state-instead-of-insert-state activate)
  (evil-emacs-state))

(setq evil-default-state 'emacs)

;;; It turns out that the above does not work, for some bizarre reason. Esc-
;;; is always captured and assumed to be part of some continuing key chord.
;;; So. Risk doing something sinful.
(global-set-key (kbd "C-c ESC") 'evil-normal-state)


(setq evil-normal-state-cursor '(box "red"))
(setq evil-visual-state-cursor '(box "blue"))
(setq evil-motion-state-cursor '(box "green"))
(setq evil-emacs-state-cursor '(box "white"))


(evil-set-initial-state 'fundamental-mode 'emacs)
(evil-set-initial-state 'prog-mode 'emacs)
(evil-set-initial-state 'text-mode 'emacs)


(global-evil-surround-mode 1)
(global-evil-matchit-mode 1)
(evil-exchange-install)

;; bind evil-args text objects
(define-key evil-inner-text-objects-map "a" 'evil-inner-arg)
(define-key evil-outer-text-objects-map "a" 'evil-outer-arg)

;; bind evil-forward/backward-args
(define-key evil-normal-state-map "L" 'evil-forward-arg)
(define-key evil-normal-state-map "H" 'evil-backward-arg)
(define-key evil-motion-state-map "L" 'evil-forward-arg)
(define-key evil-motion-state-map "H" 'evil-backward-arg)

;; bind evil-jump-out-args
(define-key evil-normal-state-map "K" 'evil-jump-out-args)
