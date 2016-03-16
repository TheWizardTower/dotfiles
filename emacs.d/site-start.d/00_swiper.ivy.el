(require 'ivy)
(require 'swiper)
(require 'counsel)

(setq ivy-use-virtual-buffers t)
(global-unset-key (kbd "C-s"))
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
