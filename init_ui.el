;; User-interface

;; Disable toolbar, scrollbar, menubar, and mode line
(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (scroll-bar-mode -1)))
(menu-bar-mode -1)
(setq-default mode-line-format nil) 


;; Use Tabbar
(use-package tabbar
  :ensure t
  :config
  (tabbar-mode 1)
  (bind-key "M-[" 'tabbar-backward)
  (bind-key "M-]" 'tabbar-forward)
  (bind-key "M-{" 'tabbar-backward-group)
  (bind-key "M-}" 'tabbar-forward-group) 
  (setq tabbar-buffer-groups-function
	'tabbar-buffer-groups
	)
  )
(load "~/.emacs.d/init_tabbar.el")
