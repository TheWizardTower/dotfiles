;;; Temporary SVN heresy. Move into its own file.

(autoload 'svn-status "dsvn" "Run `svn status'." t)
(autoload 'svn-update "dsvn" "Run `svn update'." t)

(require 'vc-svn)
