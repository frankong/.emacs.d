;; Set packages
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   '("elpy" . "http://jorgenschaefer.github.io/packages/")
   )
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
(if (not (package-installed-p 'use-package))
    (package-install 'use-package))
(require 'use-package)

;; Load user interface init file
(load "~/.emacs.d/init_ui.el")


;; Load setting related init file
(load "~/.emacs.d/init_settings.el")


;; Load tool related init file
(load "~/.emacs.d/init_tools.el")


;; References
;; http://aaronbedra.com/emacs.d/
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elpy-disable-backend-error-display nil)
 '(elpy-rpc-python-command "python3")
 '(flycheck-flake8-maximum-line-length 100)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (elpy ein markdown-mode reveal-in-osx-finder cuda-mode flycheck-tip use-package undo-tree tabbar smartparens magit iedit helm-projectile helm-gtags flycheck company auctex)))
 '(split-height-threshold 80)
 '(split-width-threshold 0)
 '(tabbar-separator (quote (0.5))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flymake-errline ((t nil)))
 '(flymake-warnline ((t nil))))
(put 'erase-buffer 'disabled nil)
