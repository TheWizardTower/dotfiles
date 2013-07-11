(require 'flymake)
    (defun flymake-Haskell-init ()
          (flymake-simple-make-init-impl
            'flymake-create-temp-with-folder-structure nil nil
            (file-name-nondirectory buffer-file-name)
            'flymake-get-Haskell-cmdline))
    (defun flymake-get-Haskell-cmdline (source base-dir)
       (list "flycheck_haskell.pl"
            (list source base-dir)))
    
    (push '(".+\\.hs$" flymake-Haskell-init flymake-simple-java-cleanup)
          flymake-allowed-file-name-masks)
    (push '(".+\\.lhs$" flymake-Haskell-init flymake-simple-java-cleanup)
          flymake-allowed-file-name-masks)
    (push
      '("^\\(\.+\.hs\\|\.lhs\\):\\([0-9]+\\):\\([0-9]+\\):\\(.+\\)"
       1 2 3 4) flymake-err-line-patterns)
    ;; optional setting
    ;; if you want to use flymake always, then add the following hook.
    (add-hook
    'haskell-mode-hook
    '(lambda ()
       (if (not (null buffer-file-name)) (flymake-mode))))
