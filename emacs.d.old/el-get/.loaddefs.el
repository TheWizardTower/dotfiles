;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-packages-of-type el-get-update-all
;;;;;;  el-get-version) "el-get/el-get" "../../../.emacs.d/el-get/el-get/el-get.el"
;;;;;;  "ebe421326aa2c89c834a340ed967d896")
;;; Generated autoloads from ../../../.emacs.d/el-get/el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get/el-get-list-packages"
;;;;;;  "../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "963cec2f84795bf50d332403e97c20ca")
;;; Generated autoloads from ../../../.emacs.d/el-get/el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../.emacs.d/el-get/el-get/el-get-autoloads.el"
;;;;;;  "../../../.emacs.d/el-get/el-get/el-get-build.el" "../../../.emacs.d/el-get/el-get/el-get-byte-compile.el"
;;;;;;  "../../../.emacs.d/el-get/el-get/el-get-core.el" "../../../.emacs.d/el-get/el-get/el-get-custom.el"
;;;;;;  "../../../.emacs.d/el-get/el-get/el-get-dependencies.el"
;;;;;;  "../../../.emacs.d/el-get/el-get/el-get-install.el" "../../../.emacs.d/el-get/el-get/el-get-list-packages.el"
;;;;;;  "../../../.emacs.d/el-get/el-get/el-get-methods.el" "../../../.emacs.d/el-get/el-get/el-get-notify.el"
;;;;;;  "../../../.emacs.d/el-get/el-get/el-get-recipes.el" "../../../.emacs.d/el-get/el-get/el-get-status.el"
;;;;;;  "../../../.emacs.d/el-get/el-get/el-get.el") (21369 17752
;;;;;;  266709 222000))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
