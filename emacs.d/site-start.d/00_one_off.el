;;; Stolen from http://efod.se/writings/linuxbook/html/date-and-time.html
(setq display-time-24hr-format t)
;; (setq display-time-day-and-date t)
(display-time)

(fset 'yes-or-no-p 'y-or-n-p)
(load-theme 'evenhold t)

(require 'browse-kill-ring+)

(eval-after-load "menu-bar" '(require 'menu-bar+))

(setq-default indent-tabs-mode nil)

;; Highlight matching parenthesis.
(show-paren-mode 1)
