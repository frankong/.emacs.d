;; Set packages
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;; Personal information
(setq user-full-name "Frank Ong"
      user-mail-address "frankongh@gmail.com")

;; Load machine dependent init file
(cond
 ((file-exists-p "~/.emacs.d/init_custom.el")
  (load "~/.emacs.d/init_custom.el"))
 )

;; Use use-package
(package-install 'use-package)
(require 'use-package)

;; Load user interface init file
(load "~/.emacs.d/init_ui.el")

;; Load tool related init file
(load "~/.emacs.d/init_tools.el")

;; References
;; http://aaronbedra.com/emacs.d/
