((ac-anything2 status "installed" recipe
               (:name ac-anything2 :auto-generated t :type emacswiki :description "ac-anything.el for the latest version of auto-complete.el" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/ac-anything2.el"))
 (el-get status "installed" recipe
         (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
                ("el-get.*\\.el$" "methods/")
                :load "el-get.el"))
 (go-mode status "installed" recipe
          (:name go-mode :description "Major mode for the Go programming language" :type http :url "http://go.googlecode.com/hg/misc/emacs/go-mode.el?r=tip" :localname "go-mode.el")))
