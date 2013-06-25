(require 'ediff)

(require 'linum)

(require 'tramp)

(require 're-builder)

(autoload 'dos-mode "dos" "Edit Dos scripts." t)
(add-to-list 'auto-mode-alist '("\\.bat$" . dos-mode))

(setq auto-mode-alist
      (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))
   (defun my-csharp-mode-fn ()
      "function that runs when csharp-mode is initialized for a buffer."
   )
   (add-hook  'csharp-mode-hook 'my-csharp-mode-fn t)


(autoload 'nsis-mode "nsis-mode" "NSIS mode" t)

 (setq auto-mode-alist (append '(("\\.\\([Nn][Ss][Ii]\\)$" .
                                  nsis-mode)) auto-mode-alist))

 (setq auto-mode-alist (append '(("\\.\\([Nn][Ss][Hh]\\)$" .
                                  nsis-mode)) auto-mode-alist))


(setq ispell-program-name "aspell")

(setq ispell-dictionary "american")

(setq ispell-list-command "list")

(add-to-list 'exec-path "C:/Program Files/Aspell/bin/")

(require 'ispell)
