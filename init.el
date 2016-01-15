(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))


; Load Intel init file
(load "~/.emacs.d/init_intel.el")


; Use use-package
(package-install 'use-package)
(require 'use-package)


; Load user interface init file
(load "~/.emacs.d/init_ui.el")

; Load code tool related init file
;(load "~/.emacs.d/init_tools.el")
