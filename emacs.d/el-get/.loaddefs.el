;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (browse-kill-ring-copy-to-other-ring toggle-browse-kill-ring-display-style
;;;;;;  browse-kill-ring-switch-to-other-kill-ring browse-kill-ring
;;;;;;  browse-kill-ring-edit-finish browse-kill-ring-edit browse-kill-ring-default-keybindings
;;;;;;  browse-kill-ring-forward browse-kill-ring-append-insert-and-move
;;;;;;  browse-kill-ring-prepend-insert-and-move browse-kill-ring-insert-and-move
;;;;;;  browse-kill-ring-delete browse-kill-ring-alternative-push-function
;;;;;;  browse-kill-ring-alternative-ring browse-kill-ring-alternative-yank-commands
;;;;;;  browse-kill-ring-yank-commands) "browse-kill-ring+/browse-kill-ring+"
;;;;;;  "browse-kill-ring+/browse-kill-ring+.el" (21428 33143 317856
;;;;;;  557000))
;;; Generated autoloads from browse-kill-ring+/browse-kill-ring+.el

(defvar browse-kill-ring-yank-commands (if (boundp 'secondary-selection-yank-commands) secondary-selection-yank-commands '(yank icicle-yank-maybe-completing)) "\
*Commands that yank.
Used by `yank-pop' to tell whether the previous command was a yank command.
Used only if `browse-kill-ring-default-keybindings' has been called,
so `yank-pop' is advised.")

(custom-autoload 'browse-kill-ring-yank-commands "browse-kill-ring+/browse-kill-ring+" t)

(defvar browse-kill-ring-alternative-yank-commands (and (boundp 'secondary-selection-yank-secondary-commands) secondary-selection-yank-secondary-commands) "\
*Commands that yank using the alternative selection ring.
Used by `browse-kill-ring-setup' to tell whether the previous command
yanked from `browse-kill-ring-alternative-ring'.")

(custom-autoload 'browse-kill-ring-alternative-yank-commands "browse-kill-ring+/browse-kill-ring+" t)

(defvar browse-kill-ring-alternative-ring (and (boundp 'secondary-selection-ring) 'secondary-selection-ring) "\
*Selection ring to use as an alternative to `kill-ring'.
A value of nil means there is no alternative selection ring; that is,
`kill-ring' is used always.")

(custom-autoload 'browse-kill-ring-alternative-ring "browse-kill-ring+/browse-kill-ring+" t)

(defvar browse-kill-ring-alternative-push-function (and (boundp 'secondary-selection-ring) 'add-secondary-to-ring) "\
*Function that adds item to the front of alternative selection ring.
This is analogous to `kill-new' for the alternative ring.
It must accept the same same arguments as `kill-new'.")

(custom-autoload 'browse-kill-ring-alternative-push-function "browse-kill-ring+/browse-kill-ring+" t)

(autoload 'browse-kill-ring-delete "browse-kill-ring+/browse-kill-ring+" "\
Remove all occurrences of selection at point from current selection ring.

\(fn)" t nil)

(autoload 'browse-kill-ring-insert-and-move "browse-kill-ring+/browse-kill-ring+" "\
Like `browse-kill-ring-insert', but move selection to front of ring.
Insert the selection at point unless optional arg
APPEND/PREPEND is:
 `append'  - insert at eob, not at point
 `prepend' - insert at bob, not at point

\(fn &optional QUIT APPEND/PREPEND)" t nil)

(autoload 'browse-kill-ring-prepend-insert-and-move "browse-kill-ring+/browse-kill-ring+" "\
`browse-kill-ring-prepend-insert', but move selection to front of ring.

\(fn &optional QUIT)" t nil)

(autoload 'browse-kill-ring-append-insert-and-move "browse-kill-ring+/browse-kill-ring+" "\
`browse-kill-ring-append-insert', but move selection to front of ring.

\(fn &optional QUIT)" t nil)

(autoload 'browse-kill-ring-forward "browse-kill-ring+/browse-kill-ring+" "\
Move forward by ARG selection-ring entries.

\(fn &optional ARG)" t nil)

(autoload 'browse-kill-ring-default-keybindings "browse-kill-ring+/browse-kill-ring+" "\
Set up `M-y' so that it can invoke `browse-kill-ring'.
See also option `browse-kill-ring-yank-commands'.

\(fn)" t nil)

(autoload 'browse-kill-ring-edit "browse-kill-ring+/browse-kill-ring+" "\
Edit the current selection ring entry at point.

\(fn)" t nil)

(autoload 'browse-kill-ring-edit-finish "browse-kill-ring+/browse-kill-ring+" "\
Commit the changes to the current selection ring.

\(fn)" t nil)

(autoload 'browse-kill-ring "browse-kill-ring+/browse-kill-ring+" "\
Browse the current selection ring.
With a prefix arg, browse the alternative selection ring instead.

\(If `browse-kill-ring-alternative-ring' is nil, then a prefix arg has
no effect.)

\(fn &optional OTHER-RING-P)" t nil)

(autoload 'browse-kill-ring-switch-to-other-kill-ring "browse-kill-ring+/browse-kill-ring+" "\
Browse the other selection ring.
If the current ring is `kill-ring' then browse the alternative ring
\(e.g. `secondary-selection-ring'), and vice versa.  The alternative
ring is the value of `browse-kill-ring-alternative-ring'.

\(fn)" t nil)

(autoload 'toggle-browse-kill-ring-display-style "browse-kill-ring+/browse-kill-ring+" "\
Toggle browse-kill-ring-display-style between `separated' and `one-line'.

\(fn)" t nil)

(autoload 'browse-kill-ring-copy-to-other-ring "browse-kill-ring+/browse-kill-ring+" "\
Copy the selection at point from current selection ring to other ring.
With a prefix arg, move it instead of copying it.
If the other ring is also displayed, then its displayed is updated.

\(fn &optional MOVEP)" t nil)

;;;***

;;;### (autoloads (browse-kill-ring browse-kill-ring-default-keybindings)
;;;;;;  "browse-kill-ring/browse-kill-ring" "browse-kill-ring/browse-kill-ring.el"
;;;;;;  (21468 8256 387393 714000))
;;; Generated autoloads from browse-kill-ring/browse-kill-ring.el

(autoload 'browse-kill-ring-default-keybindings "browse-kill-ring/browse-kill-ring" "\
Set up M-y (`yank-pop') so that it can invoke `browse-kill-ring'.
Normally, if M-y was not preceeded by C-y, then it has no useful
behavior.  This function sets things up so that M-y will invoke
`browse-kill-ring'.

\(fn)" t nil)

(autoload 'browse-kill-ring "browse-kill-ring/browse-kill-ring" "\
Display items in the `kill-ring' in another buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (color-theme-desert) "color-theme-desert/color-theme-desert"
;;;;;;  "color-theme-desert/color-theme-desert.el" (21428 30621 456681
;;;;;;  771000))
;;; Generated autoloads from color-theme-desert/color-theme-desert.el

(autoload 'color-theme-desert "color-theme-desert/color-theme-desert" "\
Emacs color theme desert, inspired by VIM desert theme.

\(fn)" t nil)

;;;***

;;;### (autoloads (color-theme-solarized-light color-theme-solarized-dark
;;;;;;  color-theme-solarized) "color-theme-solarized/color-theme-solarized"
;;;;;;  "color-theme-solarized/color-theme-solarized.el" (21428 30652
;;;;;;  974159 1000))
;;; Generated autoloads from color-theme-solarized/color-theme-solarized.el

(autoload 'color-theme-solarized "color-theme-solarized/color-theme-solarized" "\
Color theme by Ethan Schoonover, created 2011-03-24.
Ported to Emacs by Greg Pfeil, http://ethanschoonover.com/solarized.

\(fn MODE)" t nil)

(autoload 'color-theme-solarized-dark "color-theme-solarized/color-theme-solarized" "\


\(fn)" t nil)

(autoload 'color-theme-solarized-light "color-theme-solarized/color-theme-solarized" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil "color-theme-solarized/solarized-definitions"
;;;;;;  "color-theme-solarized/solarized-definitions.el" (21428 30652
;;;;;;  974159 1000))
;;; Generated autoloads from color-theme-solarized/solarized-definitions.el

(when (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

;;;***

;;;### (autoloads nil "color-theme-tangotango/tangotango-theme" "color-theme-tangotango/tangotango-theme.el"
;;;;;;  (21428 31176 675086 687000))
;;; Generated autoloads from color-theme-tangotango/tangotango-theme.el

(and load-file-name (boundp 'custom-theme-load-path) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

;;;***

;;;### (autoloads (color-theme-initialize color-theme-submit color-theme-install
;;;;;;  color-theme-compare color-theme-make-snapshot color-theme-analyze-defun
;;;;;;  color-theme-print color-theme-install-at-point-for-current-frame
;;;;;;  color-theme-install-at-mouse color-theme-describe color-theme-select)
;;;;;;  "color-theme/color-theme" "color-theme/color-theme.el" (17529
;;;;;;  41105 0 0))
;;; Generated autoloads from color-theme/color-theme.el

(autoload 'color-theme-select "color-theme/color-theme" "\
Displays a special buffer for selecting and installing a color theme.
With optional prefix ARG, this buffer will include color theme libraries
as well.  A color theme library is in itself not complete, it must be
used as part of another color theme to be useful.  Thus, color theme
libraries are mainly useful for color theme authors.

\(fn &optional ARG)" t nil)

(autoload 'color-theme-describe "color-theme/color-theme" "\
Describe color theme listed at point.
This shows the documentation of the value of text-property color-theme
at point.  The text-property color-theme should be a color theme
function.  See `color-themes'.

\(fn)" t nil)

(autoload 'color-theme-install-at-mouse "color-theme/color-theme" "\
Install color theme clicked upon using the mouse.
First argument EVENT is used to set point.  Then
`color-theme-install-at-point' is called.

\(fn EVENT)" t nil)

(autoload 'color-theme-install-at-point-for-current-frame "color-theme/color-theme" "\
Install color theme at point for current frame only.
Binds `color-theme-is-global' to nil and calls
`color-theme-install-at-point'.

\(fn)" t nil)

(autoload 'color-theme-print "color-theme/color-theme" "\
Print the current color theme function.

You can contribute this function to <URL:news:gnu.emacs.sources> or
paste it into your .emacs file and call it.  That should recreate all
the settings necessary for your color theme.

Example:

    (require 'color-theme)
    (defun my-color-theme ()
      \"Color theme by Alex Schroeder, created 2000-05-17.\"
      (interactive)
      (color-theme-install
       '(...
	 ...
	 ...)))
    (my-color-theme)

If you want to use a specific color theme function, you can call the
color theme function in your .emacs directly.

Example:

    (require 'color-theme)
    (color-theme-gnome2)

\(fn &optional BUF)" t nil)

(autoload 'color-theme-analyze-defun "color-theme/color-theme" "\
Once you have a color-theme printed, check for missing faces.
This is used by maintainers who receive a color-theme submission
and want to make sure it follows the guidelines by the color-theme
author.

\(fn)" t nil)

(autoload 'color-theme-make-snapshot "color-theme/color-theme" "\
Return the definition of the current color-theme.
The function returned will recreate the color-theme in use at the moment.

\(fn)" nil nil)

(autoload 'color-theme-compare "color-theme/color-theme" "\
Compare two color themes.
This will print the differences between installing THEME-A and
installing THEME-B.  Note that the order is important: If a face is
defined in THEME-A and not in THEME-B, then this will not show up as a
difference, because there is no reset before installing THEME-B.  If a
face is defined in THEME-B and not in THEME-A, then this will show up as
a difference.

\(fn THEME-A THEME-B)" t nil)

(autoload 'color-theme-install "color-theme/color-theme" "\
Install a color theme defined by frame parameters, variables and faces.

The theme is installed for all present and future frames; any missing
faces are created.  See `color-theme-install-faces'.

THEME is a color theme definition.  See below for more information.

If you want to install a color theme from your .emacs, use the output
generated by `color-theme-print'.  This produces color theme function
which you can copy to your .emacs.

A color theme definition is a list:
\([FUNCTION] FRAME-PARAMETERS VARIABLE-SETTINGS FACE-DEFINITIONS)

FUNCTION is the color theme function which called `color-theme-install'.
This is no longer used.  There was a time when this package supported
automatic factoring of color themes.  This has been abandoned.

FRAME-PARAMETERS is an alist of frame parameters.  These are installed
with `color-theme-install-frame-params'.  These are installed last such
that any changes to the default face can be changed by the frame
parameters.

VARIABLE-DEFINITIONS is an alist of variable settings.  These are
installed with `color-theme-install-variables'.

FACE-DEFINITIONS is an alist of face definitions.  These are installed
with `color-theme-install-faces'.

If `color-theme-is-cumulative' is nil, a color theme will undo face and
frame-parameter settings of previous color themes.

\(fn THEME)" nil nil)

(autoload 'color-theme-submit "color-theme/color-theme" "\
Submit your color-theme to the maintainer.

\(fn)" t nil)

(autoload 'color-theme-initialize "color-theme/color-theme" "\
Initialize the color theme package by loading color-theme-libraries.

\(fn)" t nil)

;;;***

;;;### (autoloads (crosshairs-unhighlight crosshairs-highlight crosshairs
;;;;;;  crosshairs-flash crosshairs-toggle-when-idle crosshairs-mode
;;;;;;  crosshairs) "crosshairs/crosshairs" "../../../.emacs.d/el-get/crosshairs/crosshairs.el"
;;;;;;  "a9899a64218c4262269115674337b8d8")
;;; Generated autoloads from ../../../.emacs.d/el-get/crosshairs/crosshairs.el

(let ((loads (get 'crosshairs 'custom-loads))) (if (member '"crosshairs/crosshairs" loads) nil (put 'crosshairs 'custom-loads (cons '"crosshairs/crosshairs" loads))))

(defvar crosshairs-mode nil "\
Non-nil if Crosshairs mode is enabled.
See the command `crosshairs-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `crosshairs-mode'.")

(custom-autoload 'crosshairs-mode "crosshairs/crosshairs" nil)

(autoload 'crosshairs-mode "crosshairs/crosshairs" "\
Toggle highlighting the current line and column.
With ARG, turn highlighting on if and only if ARG is positive.

\(fn &optional ARG)" t nil)

(defalias 'toggle-crosshairs-when-idle 'crosshairs-toggle-when-idle)

(autoload 'crosshairs-toggle-when-idle "crosshairs/crosshairs" "\
Toggle highlighting the current line and column when Emacs is idle.
With prefix argument, turn on if ARG > 0; else turn off.
You can use commands `col-highlight-set-interval' and
`hl-line-when-idle-interval' to change the idle times.

\(fn &optional ARG)" t nil)

(defalias 'flash-crosshairs 'crosshairs-flash)

(autoload 'crosshairs-flash "crosshairs/crosshairs" "\
Highlight the current line and column temporarily.
Highlight the line for `hl-line-flash-show-period' and the column for
`column-show-period' seconds.  With prefix argument SECONDS, highlight
both for SECONDS seconds.

\(fn &optional SECONDS)" t nil)

(autoload 'crosshairs "crosshairs/crosshairs" "\
Highlight current position with crosshairs.
With no prefix arg, highlighting turns off at the next command.
With a prefix arg, highlighting stays on until you toggle it off using
`crosshairs-mode'.

\(fn &optional MODALP)" t nil)

(autoload 'crosshairs-highlight "crosshairs/crosshairs" "\
Echo current position and highlight it with crosshairs.
If optional arg MODE is `line-only', then highlight only the line.
If optional arg MODE is `col-only', then highlight only the column.
 Interactively:
  A non-negative prefix argument uses MODE `line-only'.
  A negative prefix argument uses MODE `col-only'.

Optional arg NOMSG non-nil means show no message.

If the current buffer is not the same as the value of `orig-buff',
then indicate the buffer, as well as the position.  Variable
`orig-buff' is not bound here; if you want to take advantage of this
feature in your code, then bind it.

Return current position as a marker.

\(fn &optional MODE NOMSG)" t nil)

(autoload 'crosshairs-unhighlight "crosshairs/crosshairs" "\
Turn off crosshairs highlighting of current position.
Optional arg nil means do nothing if this event is a frame switch.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-packages-of-type el-get-update-all
;;;;;;  el-get-version) "el-get/el-get" "el-get/el-get.el" (21428
;;;;;;  29841 683449 352000))
;;; Generated autoloads from el-get/el-get.el

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
;;;;;;  "el-get/el-get-list-packages.el" (21428 29841 682449 336000))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (flymake-find-file-hook flymake-mode-off flymake-mode-on
;;;;;;  flymake-mode) "flymake/flymake" "flymake/flymake.el" (21428
;;;;;;  38972 645097 451000))
;;; Generated autoloads from flymake/flymake.el

(autoload 'flymake-mode "flymake/flymake" "\
Toggle on-the-fly syntax checking.
With a prefix argument ARG, enable the mode if ARG is positive,
and disable it otherwise.  If called from Lisp, enable the mode
if ARG is omitted or nil.

\(fn &optional ARG)" t nil)

(autoload 'flymake-mode-on "flymake/flymake" "\
Turn flymake mode on.

\(fn)" nil nil)

(autoload 'flymake-mode-off "flymake/flymake" "\
Turn flymake mode off.

\(fn)" nil nil)

(autoload 'flymake-find-file-hook "flymake/flymake" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads (flyspell-buffer flyspell-region flyspell-mode-off
;;;;;;  flyspell-version flyspell-mode flyspell-prog-mode flyspell-mode-line-string)
;;;;;;  "flyspell/flyspell-1.7q" "flyspell/flyspell-1.7q.el" (21428
;;;;;;  38994 932434 823000))
;;; Generated autoloads from flyspell/flyspell-1.7q.el

(defvar flyspell-mode-line-string " Fly" "\
*String displayed on the modeline when flyspell is active.
Set this to nil if you don't want a modeline indicator.")

(custom-autoload 'flyspell-mode-line-string "flyspell/flyspell-1.7q" t)

(autoload 'flyspell-prog-mode "flyspell/flyspell-1.7q" "\
Turn on `flyspell-mode' for comments and strings.

\(fn)" t nil)

(defvar flyspell-mode nil)

(defvar flyspell-mode-map (make-sparse-keymap))

(autoload 'flyspell-mode "flyspell/flyspell-1.7q" "\
Minor mode performing on-the-fly spelling checking.
Ispell is automatically spawned on background for each entered words.
The default flyspell behavior is to highlight incorrect words.
With no argument, this command toggles Flyspell mode.
With a prefix argument ARG, turn Flyspell minor mode on iff ARG is positive.
  
Bindings:
\\[ispell-word]: correct words (using Ispell).
\\[flyspell-auto-correct-word]: automatically correct word.
\\[flyspell-auto-correct-previous-word]: automatically correct the last misspelled word.
\\[flyspell-correct-word] (or down-mouse-2): popup correct words.

Hooks:
This runs `flyspell-mode-hook' after flyspell is entered.

Remark:
`flyspell-mode' uses `ispell-mode'.  Thus all Ispell options are
valid.  For instance, a personal dictionary can be used by
invoking `ispell-change-dictionary'.

Consider using the `ispell-parser' to check your text.  For instance
consider adding:
\(add-hook 'tex-mode-hook (function (lambda () (setq ispell-parser 'tex))))
in your .emacs file.

\\[flyspell-region] checks all words inside a region.
\\[flyspell-buffer] checks the whole buffer.

\(fn &optional ARG)" t nil)

(if (fboundp 'add-minor-mode) (add-minor-mode 'flyspell-mode 'flyspell-mode-line-string flyspell-mode-map nil 'flyspell-mode) (or (assoc 'flyspell-mode minor-mode-alist) (setq minor-mode-alist (cons '(flyspell-mode flyspell-mode-line-string) minor-mode-alist))) (or (assoc 'flyspell-mode minor-mode-map-alist) (setq minor-mode-map-alist (cons (cons 'flyspell-mode flyspell-mode-map) minor-mode-map-alist))))

(autoload 'flyspell-version "flyspell/flyspell-1.7q" "\
The flyspell version

\(fn)" t nil)

(autoload 'flyspell-mode-off "flyspell/flyspell-1.7q" "\
Turn Flyspell mode off.

\(fn)" nil nil)

(autoload 'flyspell-region "flyspell/flyspell-1.7q" "\
Flyspell text between BEG and END.

\(fn BEG END)" t nil)

(autoload 'flyspell-buffer "flyspell/flyspell-1.7q" "\
Flyspell whole buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (toggle-follow-mouse turn-off-follow-mouse turn-on-follow-mouse)
;;;;;;  "follow-mouse/follow-mouse" "follow-mouse/follow-mouse.el"
;;;;;;  (21428 39009 510655 500000))
;;; Generated autoloads from follow-mouse/follow-mouse.el

(autoload 'turn-on-follow-mouse "follow-mouse/follow-mouse" "\
Moving the mouse will automatically select the window under it.

\(fn)" t nil)

(autoload 'turn-off-follow-mouse "follow-mouse/follow-mouse" "\
Moving the mouse will not automatically select the window under it.

\(fn)" t nil)

(autoload 'toggle-follow-mouse "follow-mouse/follow-mouse" "\
Toggle whether moving the mouse automatically selects the window under it.
If the optional prefix ARG is specified, follow-mouse is enabled if it is
positive, and disabled otherwise.  If called interactively, or the optional
VERBOSE argument is non-nil, display a confirmation message.

\(fn &optional ARG VERBOSE)" t nil)

;;;***

;;;### (autoloads (highline-split-window-horizontally highline-split-window-vertically
;;;;;;  highline-view-mode highline-mode global-highline-mode highline-customize)
;;;;;;  "highline/highline" "highline/highline.el" (21428 33626 189165
;;;;;;  976000))
;;; Generated autoloads from highline/highline.el

(autoload 'highline-customize "highline/highline" "\
Customize highline group.

\(fn)" t nil)

(defvar global-highline-mode nil "\
Non-nil if Global-Highline mode is enabled.
See the command `global-highline-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-highline-mode'.")

(custom-autoload 'global-highline-mode "highline/highline" nil)

(autoload 'global-highline-mode "highline/highline" "\
Toggle global minor mode to highlight line about point (HL on modeline).

If ARG is null, toggle global highline mode.
If ARG is a number and is greater than zero, turn on
global highline mode; otherwise, turn off global highline mode.
Only useful with a windowing system.

\(fn &optional ARG)" t nil)

(autoload 'highline-mode "highline/highline" "\
Toggle local minor mode to highlight the line about point (hl on modeline).

If ARG is null, toggle local highline mode.
If ARG is a number and is greater than zero, turn on
local highline mode; otherwise, turn off local highline mode.
Only useful with a windowing system.

\(fn &optional ARG)" t nil)

(autoload 'highline-view-mode "highline/highline" "\
Toggle indirect mode to highlight current line in buffer (Ihl on modeline).

If ARG is null, toggle indirect highline mode.
If ARG is a number and is greater than zero, turn on
indirect highline mode; otherwise, turn off indirect highline mode.
Only useful with a windowing system.

Indirect highline (`highline-view-mode') is useful when you wish
to have various \"visions\" of the same buffer.

Indirect highline uses an indirect buffer to get the \"vision\" of the buffer.
So, if you kill an indirect buffer, the base buffer is not affected; if you
kill the base buffer, all indirect buffer related with the base buffer is
automagically killed.  Also, any text insertion/deletion in any indirect or base
buffer is updated in all related buffers.

See `highline-view-prefix'.

\(fn &optional ARG)" t nil)

(autoload 'highline-split-window-vertically "highline/highline" "\
Split window vertically then turn on indirect highline mode.

See `split-window-vertically' for explanation about ARG and for
documentation.

See also `highline-view-mode' for documentation.

\(fn &optional ARG)" t nil)

(autoload 'highline-split-window-horizontally "highline/highline" "\
Split window horizontally then turn on indirect highline mode.

See `split-window-horizontally' for explanation about ARG and for
documentation.

See also `highline-view-mode' for documentation.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (ido-load-library-find ido-load-library ido-load-library)
;;;;;;  "ido-load-library/ido-load-library" "ido-load-library/ido-load-library.el"
;;;;;;  (21428 33702 680323 854000))
;;; Generated autoloads from ido-load-library/ido-load-library.el

(let ((loads (get 'ido-load-library 'custom-loads))) (if (member '"ido-load-library/ido-load-library" loads) nil (put 'ido-load-library 'custom-loads (cons '"ido-load-library/ido-load-library" loads))))

(autoload 'ido-load-library "ido-load-library/ido-load-library" "\
Load the Emacs Lisp library named LIBRARY.

This is identical to `load-library' except that is uses
`ido-completing-read' and a specialized history.

To set REGENERATE and reload the cache of library names, use a
universal prefix argument.

\(fn LIBRARY &optional REGENERATE)" t nil)

(autoload 'ido-load-library-find "ido-load-library/ido-load-library" "\
Open the Emacs Lisp library named FILE for editing.

Uses `ido-completing-read' to find any library on `load-path' for
visiting in a buffer.  Text around the point will be used for the
default value, making this something of an alternative to
`find-file-at-point'.

To set REGENERATE and reload the cache of library names, use a
universal prefix argument.

\(fn FILE &optional REGENERATE)" t nil)

;;;***

;;;### (autoloads (ido-vertical-mode) "ido-vertical-mode/ido-vertical-mode"
;;;;;;  "ido-vertical-mode/ido-vertical-mode.el" (21428 33784 958569
;;;;;;  333000))
;;; Generated autoloads from ido-vertical-mode/ido-vertical-mode.el

(defvar ido-vertical-mode nil "\
Non-nil if Ido-Vertical mode is enabled.
See the command `ido-vertical-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ido-vertical-mode'.")

(custom-autoload 'ido-vertical-mode "ido-vertical-mode/ido-vertical-mode" nil)

(autoload 'ido-vertical-mode "ido-vertical-mode/ido-vertical-mode" "\
Makes ido-mode display vertically.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (idomenu) "idomenu/idomenu" "idomenu/idomenu.el"
;;;;;;  (21428 33807 319907 826000))
;;; Generated autoloads from idomenu/idomenu.el

(autoload 'idomenu "idomenu/idomenu" "\
Switch to a buffer-local tag from Imenu via Ido.

\(fn)" t nil)

;;;***

;;;### (autoloads (menu-bar-next-tag-other-window kill-this-buffer
;;;;;;  menu-bar-create-directory describe-menubar) "menu-bar+/menu-bar+"
;;;;;;  "menu-bar+/menu-bar+.el" (21428 33978 957505 974000))
;;; Generated autoloads from menu-bar+/menu-bar+.el

(autoload 'describe-menubar "menu-bar+/menu-bar+" "\
Explain the menu bar, in general terms.

\(fn)" t nil)

(autoload 'menu-bar-create-directory "menu-bar+/menu-bar+" "\
Create a subdirectory of `default-directory' called DIRECTORY.

\(fn DIRECTORY)" t nil)

(autoload 'kill-this-buffer "menu-bar+/menu-bar+" "\
Delete the current buffer and delete all of its windows.

\(fn)" t nil)

(autoload 'menu-bar-next-tag-other-window "menu-bar+/menu-bar+" "\
Find the next definition of the tag already specified.

\(fn)" t nil)

;;;***

;;;### (autoloads (pkg-info-version-info pkg-info-package-version
;;;;;;  pkg-info-defining-library-version pkg-info-defining-library-original-version
;;;;;;  pkg-info-library-version pkg-info-library-original-version)
;;;;;;  "pkg-info/pkg-info" "pkg-info/pkg-info.el" (21428 39146 402727
;;;;;;  691000))
;;; Generated autoloads from pkg-info/pkg-info.el

(autoload 'pkg-info-library-original-version "pkg-info/pkg-info" "\
Get the original version in the header of LIBRARY.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no X-Original-Version
header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-library-version "pkg-info/pkg-info" "\
Get the version in the header of LIBRARY.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no proper header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-original-version "pkg-info/pkg-info" "\
Get the original version of the library defining FUNCTION.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-version "pkg-info/pkg-info" "\
Get the version of the library defining FUNCTION.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-package-version "pkg-info/pkg-info" "\
Get the version of an installed PACKAGE.

If SHOW is non-nil, show the version in the minibuffer.

Return the version as list, or nil if PACKAGE is not installed.

\(fn PACKAGE &optional SHOW)" t nil)

(autoload 'pkg-info-version-info "pkg-info/pkg-info" "\
Obtain complete version info for LIBRARY and PACKAGE.

LIBRARY is a symbol denoting a named feature, or a library name
as string.  PACKAGE is a symbol denoting an ELPA package.  If
omitted or nil, default to LIBRARY.

If SHOW is non-nil, show the version in the minibuffer.

When called interactively, prompt for LIBRARY.  When called
interactively with prefix argument, prompt for PACKAGE as well.

Return a string with complete version information for LIBRARY.
This version information contains the version from the headers of
LIBRARY, and the version of the installed PACKAGE, the LIBRARY is
part of.  If PACKAGE is not installed, or if the PACKAGE version
is the same as the LIBRARY version, do not include a package
version.

\(fn LIBRARY &optional PACKAGE SHOW)" t nil)

;;;***

;;;### (autoloads (shime) "shime/shime" "shime/shime.el" (21477 9610
;;;;;;  716361 458000))
;;; Generated autoloads from shime/shime.el

(autoload 'shime "shime/shime" "\
Start a Shime session.

\(fn)" t nil)

;;;***

;;;### (autoloads (smex-initialize smex-major-mode-commands smex)
;;;;;;  "smex/smex" "smex/smex.el" (21468 7413 924783 847000))
;;; Generated autoloads from smex/smex.el

(autoload 'smex "smex/smex" "\


\(fn)" t nil)

(autoload 'smex-major-mode-commands "smex/smex" "\
Like `smex', but limited to commands that are relevant to the active major mode.

\(fn)" t nil)

(autoload 'smex-initialize "smex/smex" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (sr-speedbar-open sr-speedbar-toggle) "sr-speedbar/sr-speedbar"
;;;;;;  "sr-speedbar/sr-speedbar.el" (21477 9665 963255 262000))
;;; Generated autoloads from sr-speedbar/sr-speedbar.el

(autoload 'sr-speedbar-toggle "sr-speedbar/sr-speedbar" "\
Toggle sr-speedbar window.
Toggle visibility of sr-speedbar by resizing
the `sr-speedbar-window' to a minimal width
or the last width when visible.
Use this function to create or toggle visibility
of a speedbar-window.  It will be created if necessary.

\(fn)" t nil)

(autoload 'sr-speedbar-open "sr-speedbar/sr-speedbar" "\
Create `sr-speedbar' window.

\(fn)" t nil)

;;;***

;;;### (autoloads (revive-save-desktop revive-desktop resume save-current-configuration
;;;;;;  wipe restore-window-configuration current-window-configuration-printable)
;;;;;;  "tabbar/revive" "tabbar/revive.el" (21477 9702 235842 93000))
;;; Generated autoloads from tabbar/revive.el

(autoload 'current-window-configuration-printable "tabbar/revive" "\
Return the printable current-window-configuration.
This configuration will be stored by restore-window-configuration.
Returned configurations are list of:
'(Screen-Width Screen-Height Edge-List Buffer-List)

Edge-List is a return value of revive:all-window-edges, list of all
window-edges whose first member is always of north west window.

Buffer-List is a list of buffer property list of all windows.  This
property lists are stored in order corresponding to Edge-List.  Buffer
property list is formed as
'((buffer-file-name) (buffer-name) (point) (window-start) tabs).

\(fn)" nil nil)

(autoload 'restore-window-configuration "tabbar/revive" "\
Restore the window configuration.
Configuration CONFIG should be created by
current-window-configuration-printable.

\(fn CONFIG)" nil nil)

(autoload 'wipe "tabbar/revive" "\
Wipe Emacs.

\(fn)" t nil)

(autoload 'save-current-configuration "tabbar/revive" "\
Save current window/buffer configuration into configuration file.

\(fn &optional NUM)" t nil)

(autoload 'resume "tabbar/revive" "\
Resume window/buffer configuration.
Configuration should be saved by save-current-configuration.

\(fn &optional NUM)" t nil)

(autoload 'revive-desktop "tabbar/revive" "\
Restores the application state.
Similar to `resume', though using `desktop' to restore buffers.

\(fn &optional FILE AUTO)" t nil)

(autoload 'revive-save-desktop "tabbar/revive" "\
Save application state with `desktop' and `revive'.
Similar to `save-current-configuration', 
though uses `desktop' to restore buffers.

\(fn &optional FILE AUTO)" t nil)

;;;***

;;;### (autoloads (tabbar-mwheel-mode tabbar-mode tabbar-local-mode
;;;;;;  tabbar-mwheel-switch-group tabbar-mwheel-switch-tab tabbar-mwheel-forward-tab
;;;;;;  tabbar-mwheel-backward-tab tabbar-mwheel-forward-group tabbar-mwheel-backward-group
;;;;;;  tabbar-mwheel-forward tabbar-mwheel-backward tabbar-press-scroll-right
;;;;;;  tabbar-press-scroll-left tabbar-press-home tabbar-forward-tab
;;;;;;  tabbar-backward-tab tabbar-forward-group tabbar-backward-group
;;;;;;  tabbar-forward tabbar-backward) "tabbar/tabbar" "tabbar/tabbar.el"
;;;;;;  (21477 9702 236842 110000))
;;; Generated autoloads from tabbar/tabbar.el

(autoload 'tabbar-backward "tabbar/tabbar" "\
Select the previous available tab.
Depend on the setting of the option `tabbar-cycle-scope'.

\(fn)" t nil)

(autoload 'tabbar-forward "tabbar/tabbar" "\
Select the next available tab.
Depend on the setting of the option `tabbar-cycle-scope'.

\(fn)" t nil)

(autoload 'tabbar-backward-group "tabbar/tabbar" "\
Go to selected tab in the previous available group.

\(fn)" t nil)

(autoload 'tabbar-forward-group "tabbar/tabbar" "\
Go to selected tab in the next available group.

\(fn)" t nil)

(autoload 'tabbar-backward-tab "tabbar/tabbar" "\
Select the previous visible tab.

\(fn)" t nil)

(autoload 'tabbar-forward-tab "tabbar/tabbar" "\
Select the next visible tab.

\(fn)" t nil)

(autoload 'tabbar-press-home "tabbar/tabbar" "\
Press the tab bar home button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-press-scroll-left "tabbar/tabbar" "\
Press the tab bar scroll-left button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-press-scroll-right "tabbar/tabbar" "\
Press the tab bar scroll-right button.
That is, simulate a mouse click on that button.
A numeric prefix ARG value of 2, or 3, respectively simulates a
mouse-2, or mouse-3 click.  The default is a mouse-1 click.

\(fn &optional ARG)" t nil)

(autoload 'tabbar-mwheel-backward "tabbar/tabbar" "\
Select the previous available tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward "tabbar/tabbar" "\
Select the next available tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-backward-group "tabbar/tabbar" "\
Go to selected tab in the previous available group.
If there is only one group, select the previous visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward-group'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward-group "tabbar/tabbar" "\
Go to selected tab in the next available group.
If there is only one group, select the next visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward-group'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-backward-tab "tabbar/tabbar" "\
Select the previous visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-backward-tab'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-forward-tab "tabbar/tabbar" "\
Select the next visible tab.
EVENT is the mouse event that triggered this command.
Mouse-enabled equivalent of the command `tabbar-forward-tab'.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-switch-tab "tabbar/tabbar" "\
Select the next or previous tab according to EVENT.

\(fn EVENT)" t nil)

(autoload 'tabbar-mwheel-switch-group "tabbar/tabbar" "\
Select the next or previous group of tabs according to EVENT.

\(fn EVENT)" t nil)

(autoload 'tabbar-local-mode "tabbar/tabbar" "\
Toggle local display of the tab bar.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.
When turned on, if a local header line is shown, it is hidden to show
the tab bar.  The tab bar is locally hidden otherwise.  When turned
off, if a local header line is hidden or the tab bar is locally
hidden, it is shown again.  Signal an error if Tabbar mode is off.

\(fn &optional ARG)" t nil)

(defvar tabbar-mode nil "\
Non-nil if Tabbar mode is enabled.
See the command `tabbar-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabbar-mode'.")

(custom-autoload 'tabbar-mode "tabbar/tabbar" nil)

(autoload 'tabbar-mode "tabbar/tabbar" "\
Toggle display of a tab bar in the header line.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.

\\{tabbar-mode-map}

\(fn &optional ARG)" t nil)

(defvar tabbar-mwheel-mode nil "\
Non-nil if Tabbar-Mwheel mode is enabled.
See the command `tabbar-mwheel-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `tabbar-mwheel-mode'.")

(custom-autoload 'tabbar-mwheel-mode "tabbar/tabbar" nil)

(autoload 'tabbar-mwheel-mode "tabbar/tabbar" "\
Toggle use of the mouse wheel to navigate through tabs or groups.
With prefix argument ARG, turn on if positive, otherwise off.
Returns non-nil if the new state is enabled.

\\{tabbar-mwheel-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (yas-global-mode yas-minor-mode) "yasnippet/yasnippet"
;;;;;;  "yasnippet/yasnippet.el" (21477 9754 573688 834000))
;;; Generated autoloads from yasnippet/yasnippet.el

(autoload 'yas-minor-mode "yasnippet/yasnippet" "\
Toggle YASnippet mode.

When YASnippet mode is enabled, `yas-expand', normally bound to
the TAB key, expands snippets of code depending on the major
mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

Key bindings:
\\{yas-minor-mode-map}

\(fn &optional ARG)" t nil)

(defvar yas-global-mode nil "\
Non-nil if Yas-Global mode is enabled.
See the command `yas-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yas-global-mode'.")

(custom-autoload 'yas-global-mode "yasnippet/yasnippet" nil)

(autoload 'yas-global-mode "yasnippet/yasnippet" "\
Toggle Yas minor mode in all buffers.
With prefix ARG, enable Yas-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yas minor mode is enabled in all buffers where
`yas-minor-mode-on' would do it.
See `yas-minor-mode' for more information on Yas minor mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../.emacs.d/el-get/crosshairs/crosshairs.el"
;;;;;;  "ac-anything2/ac-anything2.el" "color-theme-solarized/color-theme-solarized-pkg.el"
;;;;;;  "color-theme-solarized/solarized-dark-theme.el" "color-theme-solarized/solarized-light-theme.el"
;;;;;;  "color-theme-tango-2/color-theme-tango-2.el" "color-theme-tango/color-theme-tango.el"
;;;;;;  "color-theme-tangotango/color-theme-tangotango.el" "color-theme/color-theme-autoloads.el"
;;;;;;  "dash/dash-functional.el" "dash/dash.el" "el-get/el-get-autoloads.el"
;;;;;;  "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "epl/epl.el"
;;;;;;  "f/f.el" "ido-hacks/ido-hacks.el" "ido-preview/ido-preview.el"
;;;;;;  "init-auto-complete/init-auto-complete.el" "init-flymake/init-flymake.el"
;;;;;;  "init-golang/init-golang.el" "init-haskell/init-haskell.el"
;;;;;;  "init-icicles/init-icicles.el" "init-ide/init-ide.el" "init-ido/init-ido.el"
;;;;;;  "init-speedbar/init-speedbar.el" "init-tabbar/init-tabbar.el"
;;;;;;  "init-yasnippet/init-yasnippet.el" "mc/mc.el" "s/s.el" "tabbar/aquamacs-compat.el"
;;;;;;  "tabbar/aquamacs-tabbar.el" "tabbar/aquamacs-tools.el" "tabbar/one-buffer-one-frame.el"
;;;;;;  "tabbar/tabbar-window.el" "yasnippet-config/yasnippet-config.el"
;;;;;;  "yasnippet/yasnippet-debug.el" "yasnippet/yasnippet-tests.el")
;;;;;;  (21491 47970 671427 894000))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
