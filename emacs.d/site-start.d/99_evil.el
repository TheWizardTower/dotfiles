(require 'god-mode)

(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
 "g" 'evil-execute-in-god-state
 "f" 'helm-find-files
 "5" 'make-frame-command
 )

(evil-define-key 'god global-map [escape] 'evil-god-state-bail)

;;; (require 'penance)
(require 'evil)
(evil-mode 1)

(require 'evil-args)

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

(require 'evil-exchange)
(setq evil-exchange-key (kbd "zx"))

(require 'evil-vimish-fold)
(evil-vimish-fold-mode 1)

;;; Not in MELPA, grab from:
;;; https://github.com/Dewdrops/evil-extra-operator
;;(require 'evil-extra-operator)
;;(global-evil-extra-operator-mode 1)

;;; The above code block does not, by default, get Escape bound to
;;; evil-normal-state. So, do this binding now. Note that simply
;;; saying (kbd "ESC") does not work here. It has to be this:
;;; (kdb "<escape>")
(global-unset-key (kbd "<escape>"))
(global-set-key (kbd "<escape>") 'evil-normal-state)


;;; Set the color of the cursor depending on the evil mode you're in.
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

(require 'smartparens-config)
(add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)
(require 'evil-cleverparens-text-objects)

;;; Stolen from rrix.
(evil-define-state emacs
  "Emacs state that can be exited with the escape key."
  :tag " <EE> "
  :message "-- EMACS WITH ESCAPE --"
  :input-method t)

(defadvice evil-insert-state (around emacs-state-instead-of-insert-state activate)
  (evil-emacs-state))

(setq evil-default-state 'emacs)

(with-eval-after-load 'evil
  (require 'evil-anzu))

(require 'evil-mc)
(global-evil-mc-mode 1)
