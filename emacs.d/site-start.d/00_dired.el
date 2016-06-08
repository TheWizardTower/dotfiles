(require 'direx)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory)

(require 'dired+)

(require 'dired-quick-sort)
(dired-quick-sort-setup)
