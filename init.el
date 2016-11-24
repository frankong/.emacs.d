;;; My emacs init config

;; Ensure minimum version
(let ((minver "24.0"))
  (when (version<= emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))

;; Set package
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)

;; Use use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Personal information
(setq user-full-name "Frank Ong"
      user-mail-address "frankongh@gmail.com")

;; Load machine dependent init file
(cond
 ((file-exists-p "~/.emacs.d/init_custom.el")
  (load "~/.emacs.d/init_custom.el"))
 )

;; Load user interface init file
(load "~/.emacs.d/init_ui.el")


;; Load setting related init file
(load "~/.emacs.d/init_settings.el")


;; Load tool related init file
(load "~/.emacs.d/init_packages.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (nose anaconda-mode markdown-mode reveal-in-osx-finder cuda-mode auctex helm-projectile projectile iedit flycheck-pos-tip flycheck smartparens helm-gtags helm undo-tree magit company smart-mode-line-powerline-theme use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
