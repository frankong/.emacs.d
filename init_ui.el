;; User-interface

;; Set C indent to 8
(setq c-default-style "k&r"
      c-basic-offset 8)

;; Disable toolbar, scrollbar, menubar, and mode line
(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (scroll-bar-mode -1)))
(menu-bar-mode -1)
(setq-default mode-line-format nil) 

;; Change "Yes or no" to "y or n"
(fset 'yes-or-no-p 'y-or-n-p)


;; Use Tabbar
(use-package tabbar
	     :ensure t
	     :config
	     (tabbar-mode 1)
	     (bind-key "M-<left>" 'tabbar-backward)
	     (bind-key "M-<right>" 'tabbar-forward)
	     (bind-key "S-M-<left>" 'tabbar-backward-group)
	     (bind-key "S-M-<right>" 'tabbar-forward-group)
	     (setq tabbar-buffer-groups-function
		   'tabbar-buffer-groups
		   )
	     )
(load "~/.emacs.d/init_tabbar.el")
