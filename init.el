(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

					; Load machine dependent init file
(cond
 (
  (file-exists-p "~/.emacs.d/init_custom.el")
  (load "~/.emacs.d/init_custom.el")
  )
 )

; Use use-package
(package-install 'use-package)
(require 'use-package)

; Load user interface init file
(load "~/.emacs.d/init_ui.el")

; Load code tool related init file
(load "~/.emacs.d/init_tools.el")
