((apache-mode status "installed" recipe
              (:name apache-mode :description "Major mode for editing Apache configuration files" :type github :pkgname "emacsmirror/apache-mode"))
 (apel status "installed" recipe
       (:name apel :website "http://www.kanji.zinbun.kyoto-u.ac.jp/~tomo/elisp/APEL/" :description "APEL (A Portable Emacs Library) is a library to support to write portable Emacs Lisp programs." :type github :pkgname "wanderlust/apel" :build
              (mapcar
               (lambda
                 (target)
                 (list el-get-emacs
                       (split-string "-batch -q -no-site-file -l APEL-MK -f")
                       target "prefix" "site-lisp" "site-lisp"))
               '("compile-apel" "install-apel"))
              :load-path
              ("site-lisp/apel" "site-lisp/emu")))
 (e2wm status "installed" recipe
       (:name e2wm :description "simple window manager for emacs" :website "https://github.com/kiwanami/emacs-window-manager" :type github :pkgname "kiwanami/emacs-window-manager" :depends window-layout :features "e2wm"))
 (el-get status "installed" recipe
         (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "4.stable" :pkgname "dimitri/el-get" :features el-get :info "." :load "el-get.el"))
 (flim status "installed" recipe
       (:name flim :description "A library to provide basic features about message representation or encoding" :depends apel :type github :branch "flim-1_14-wl" :pkgname "wanderlust/flim" :build
              (mapcar
               (lambda
                 (target)
                 (list el-get-emacs
                       (mapcar
                        (lambda
                          (pkg)
                          (mapcar
                           (lambda
                             (d)
                             `("-L" ,d))
                           (el-get-load-path pkg)))
                        '("apel"))
                       (split-string "-batch -q -no-site-file -l FLIM-MK -f")
                       target "prefix" "site-lisp" "site-lisp"))
               '("compile-flim" "install-flim"))
              :load-path
              ("site-lisp/flim")))
 (fold status "installed" recipe
       (:name fold :auto-generated t :type emacswiki :description "Folding" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/fold.el"))
 (linum-relative status "installed" recipe
                 (:name linum-relative :auto-generated t :type emacswiki :description "display relative line number in the left margin" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/linum-relative.el"))
 (nagios-mode status "installed" recipe
              (:name nagios-mode :description "An Emacs mode for Nagios <http://www.nagios.org/>" :type git :url "http://michael.orlitzky.com/git/nagios-mode.git" :features nagios-mode))
 (nginx-mode status "installed" recipe
             (:name nginx-mode :website "https://github.com/ajc/nginx-mode" :description "major mode for editing nginx config files" :type github :pkgname "ajc/nginx-mode"))
 (perlcritic status "installed" recipe
             (:name perlcritic :auto-generated t :type emacswiki :description "Call perlcritic in Emacs" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/perlcritic.el"))
 (semi status "installed" recipe
       (:name semi :description "SEMI is a library to provide MIME feature for GNU Emacs." :depends flim :type github :branch "semi-1_14-wl" :pkgname "wanderlust/semi" :build
              (mapcar
               (lambda
                 (target)
                 (list el-get-emacs
                       (mapcar
                        (lambda
                          (pkg)
                          (mapcar
                           (lambda
                             (d)
                             `("-L" ,d))
                           (el-get-load-path pkg)))
                        '("apel" "flim"))
                       (split-string "-batch -q -no-site-file -l SEMI-MK -f")
                       target "prefix" "site-lisp" "site-lisp"))
               '("compile-semi" "install-semi"))
              :load-path
              ("site-lisp/semi/")))
 (wanderlust status "installed" recipe
             (:name wanderlust :description "Wanderlust bootstrap." :depends semi :type github :pkgname "wanderlust/wanderlust" :build
                    (mapcar
                     (lambda
                       (target-and-dirs)
                       (list el-get-emacs
                             (mapcar
                              (lambda
                                (pkg)
                                (mapcar
                                 (lambda
                                   (d)
                                   `("-L" ,d))
                                 (el-get-load-path pkg)))
                              (append
                               '("apel" "flim" "semi")
                               (when
                                   (el-get-package-exists-p "bbdb")
                                 (list "bbdb"))))
                             "--eval"
                             (el-get-print-to-string
                              '(progn
                                 (setq wl-install-utils t)
                                 (setq wl-info-lang "en")
                                 (setq wl-news-lang "en")))
                             (split-string "-batch -q -no-site-file -l WL-MK -f")
                             target-and-dirs))
                     '(("wl-texinfo-format" "doc")
                       ("compile-wl-package" "site-lisp" "icons")
                       ("install-wl-package" "site-lisp" "icons")))
                    :info "doc/wl.info" :load-path
                    ("site-lisp/wl" "utils")))
 (window-layout status "installed" recipe
                (:name window-layout :description "window layout manager" :website "https://github.com/kiwanami/emacs-window-layout" :type github :pkgname "kiwanami/emacs-window-layout" :features "window-layout")))
