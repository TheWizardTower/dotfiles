((ac-anything2 status "installed" recipe
	       (:name ac-anything2 :auto-generated t :type emacswiki :description "ac-anything.el for the latest version of auto-complete.el" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/ac-anything2.el"))
 (browse-kill-ring status "installed" recipe
		   (:name browse-kill-ring :description "Interactively insert items from kill-ring" :type github :pkgname "browse-kill-ring/browse-kill-ring" :prepare
			  (progn
			    (autoload 'browse-kill-ring-default-keybindings "browse-kill-ring"))))
 (browse-kill-ring+ status "installed" recipe
		    (:name browse-kill-ring+ :auto-generated t :type emacswiki :description "Extensions to `browse-kill-ring.el'." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/browse-kill-ring+.el"))
 (cl-lib status "installed" recipe
	 (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (color-theme status "installed" recipe
	      (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
		     ("xzf")
		     :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
		     (progn
		       (color-theme-initialize)
		       (setq color-theme-is-global t))))
 (color-theme-desert status "installed" recipe
		     (:name color-theme-desert :description "A port of VIM's desert color theme to Emacs." :type github :pkgname "superbobry/color-theme-desert" :depends color-theme :prepare
			    (autoload 'color-theme-desert "color-theme-desert" "color-theme: desert" t)))
 (color-theme-solarized status "installed" recipe
			(:name color-theme-solarized :description "Emacs highlighting using Ethan Schoonover's Solarized color scheme" :type github :pkgname "sellout/emacs-color-theme-solarized" :depends color-theme :prepare
			       (progn
				 (add-to-list 'custom-theme-load-path default-directory)
				 (autoload 'color-theme-solarized-light "color-theme-solarized" "color-theme: solarized-light" t)
				 (autoload 'color-theme-solarized-dark "color-theme-solarized" "color-theme: solarized-dark" t))))
 (color-theme-tango status "installed" recipe
		    (:name color-theme-tango :description "Color theme based on Tango Palette. Created by danranx@gmail.com" :type emacswiki :depends color-theme :prepare
			   (autoload 'color-theme-tango "color-theme-tango" "color-theme: tango" t)))
 (color-theme-tango-2 status "installed" recipe
		      (:name color-theme-tango-2 :description "A color theme based on Tango Palette." :type github :pkgname "wfarr/color-theme-tango-2" :depends color-theme :prepare
			     (autoload 'color-theme-tango-2 "color-theme-tango-2" "color-theme: tango-2" t)))
 (color-theme-tangotango status "installed" recipe
			 (:name color-theme-tangotango :description "Another color theme based on the Tango palette." :type github :pkgname "juba/color-theme-tangotango" :depends color-theme :prepare
				(autoload 'color-theme-tangotango "color-theme-tangotango" "color-theme: tangotango" t)))
 (dash status "installed" recipe
       (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
		("el-get.*\\.el$" "methods/")
		:load "el-get.el"))
 (epl status "installed" recipe
      (:name epl :description "EPL provides a convenient high-level API for various package.el versions, and aims to overcome its most striking idiocies." :type github :pkgname "cask/epl"))
 (f status "installed" recipe
    (:name f :website "https://github.com/rejeep/f.el" :description "Modern API for working with files and directories in Emacs" :depends
	   (s dash)
	   :type github :pkgname "rejeep/f.el"))
 (flymake status "installed" recipe
	  (:name flymake :description "Continuous syntax checking for Emacs." :type github :pkgname "illusori/emacs-flymake"))
 (flyspell status "installed" recipe
	   (:name flyspell :website "http://www-sop.inria.fr/members/Manuel.Serrano/flyspell/flyspell.html" :description "On-the-fly spell checker." :type http :url "http://www-sop.inria.fr/members/Manuel.Serrano/flyspell/flyspell-1.7q.el"))
 (follow-mouse status "installed" recipe
	       (:name follow-mouse :auto-generated t :type emacswiki :description "Automatically select the window under the mouse -*-unibyte: t; coding: iso-8859-1;-*-" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/follow-mouse.el"))
 (highline status "installed" recipe
	   (:name highline :auto-generated t :type emacswiki :description "minor mode to highlight current line in buffer" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/highline.el"))
 (icicles status "installed" recipe
	  (:name icicles :auto-generated t :type emacswiki :description "Minibuffer input completion and cycling." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/icicles.el"))
 (ido-hacks status "installed" recipe
	    (:name ido-hacks :description "Advices for ido-mode." :type github :pkgname "scottjad/ido-hacks" :load "ido-hacks.el"))
 (ido-load-library status "installed" recipe
		   (:name ido-load-library :auto-generated t :type emacswiki :description "Load-library alternative using ido-completing-read" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/ido-load-library.el"))
 (ido-preview status "installed" recipe
	      (:name ido-preview :auto-generated t :type emacswiki :description "commands for viewing current option contests before opening" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/ido-preview.el"))
 (ido-vertical-mode status "installed" recipe
		    (:name ido-vertical-mode :type github :pkgname "rson/ido-vertical-mode.el" :description "makes ido-mode display vertically" :features ido-vertical-mode))
 (idomenu status "installed" recipe
	  (:name idomenu :type emacswiki :description "imenu tag selection a la ido" :load-path "."))
 (init-auto-complete status "installed" recipe
		     (:name init-auto-complete :auto-generated t :type emacswiki :description "Init for auto complete" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/init-auto-complete.el"))
 (init-flymake status "installed" recipe
	       (:name init-flymake :auto-generated t :type emacswiki :description "Flymake configuration" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/init-flymake.el"))
 (init-golang status "installed" recipe
	      (:name init-golang :auto-generated t :type emacswiki :description "Extensions for go lang mode" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/init-golang.el"))
 (init-haskell status "installed" recipe
	       (:name init-haskell :auto-generated t :type emacswiki :description "Haskell configuration" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/init-haskell.el"))
 (init-icicles status "installed" recipe
	       (:name init-icicles :auto-generated t :type emacswiki :description "Init for iciciles" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/init-icicles.el"))
 (init-ide status "installed" recipe
	   (:name init-ide :auto-generated t :type emacswiki :description "IDE configuration" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/init-ide.el"))
 (init-ido status "installed" recipe
	   (:name init-ido :auto-generated t :type emacswiki :description "Ido configuration" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/init-ido.el"))
 (init-speedbar status "installed" recipe
		(:name init-speedbar :auto-generated t :type emacswiki :description "Init speedbar" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/init-speedbar.el"))
 (init-tabbar status "installed" recipe
	      (:name init-tabbar :auto-generated t :type emacswiki :description "Init for tabbar" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/init-tabbar.el"))
 (init-yasnippet status "installed" recipe
		 (:name init-yasnippet :auto-generated t :type emacswiki :description "Yasnippet configuration" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/init-yasnippet.el"))
 (linum-relative status "installed" recipe
		 (:name linum-relative :type emacswiki :description "Display relative line number in the left margin" :features linum-relative))
 (mc status "installed" recipe
     (:name mc :auto-generated t :type emacswiki :description "Midnight Commander emulation for emacs using dired" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/mc.el"))
 (menu-bar+ status "installed" recipe
	    (:name menu-bar+ :auto-generated t :type emacswiki :description "Extensions to `menu-bar.el'." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/menu-bar+.el"))
 (package status "installed" recipe
	  (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin "24" :type http :url "http://repo.or.cz/w/emacs.git/blob_plain/1a0a666f941c99882093d7bd08ced15033bc3f0c:/lisp/emacs-lisp/package.el" :shallow nil :features package :post-init
		 (progn
		   (let
		       ((old-package-user-dir
			 (expand-file-name
			  (convert-standard-filename
			   (concat
			    (file-name-as-directory default-directory)
			    "elpa")))))
		     (when
			 (file-directory-p old-package-user-dir)
		       (add-to-list 'package-directory-list old-package-user-dir)))
		   (setq package-archives
			 (bound-and-true-p package-archives))
		   (mapc
		    (lambda
		      (pa)
		      (add-to-list 'package-archives pa 'append))
		    '(("ELPA" . "http://tromey.com/elpa/")
		      ("melpa" . "http://melpa.milkbox.net/packages/")
		      ("gnu" . "http://elpa.gnu.org/packages/")
		      ("marmalade" . "http://marmalade-repo.org/packages/")
		      ("SC" . "http://joseito.republika.pl/sunrise-commander/"))))))
 (pkg-info status "installed" recipe
	   (:name pkg-info :description "Provide information about Emacs packages." :type github :pkgname "lunaryorn/pkg-info.el" :depends
		  (dash epl)))
 (s status "installed" recipe
    (:name s :description "The long lost Emacs string manipulation library." :type github :pkgname "magnars/s.el"))
 (shime status "installed" recipe
	(:name shime :description "Superior Haskell Interaction Mode for Emacs" :type github :pkgname "jschaf/shime" :load-path
	       (".")
	       :features shime))
 (smex status "installed" recipe
       (:name smex :description "M-x interface with Ido-style fuzzy matching." :type github :pkgname "nonsequitur/smex" :features smex :post-init
	      (smex-initialize)))
 (sr-speedbar status "installed" recipe
	      (:name sr-speedbar :type emacswiki :description "Same frame speedbar" :post-init
		     (require 'sr-speedbar)))
 (tabbar status "installed" recipe
	 (:name tabbar :description "Display a tab bar in the header line." :type github :pkgname "dholm/tabbar" :lazy t))
 (yasnippet status "installed" recipe
	    (:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil :build
		   (("git" "submodule" "update" "--init" "--" "snippets"))))
 (yasnippet-config status "installed" recipe
		   (:name yasnippet-config :auto-generated t :type emacswiki :description "Configuration of yasnippet.el" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/yasnippet-config.el")))
