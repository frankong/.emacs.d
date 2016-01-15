; User-interface

; Set C indent to 8
(setq c-default-style "k&r"
      c-basic-offset 8)

; Disable toolbar, scrollbar and menubar
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

;; Change "Yes or no" to "y or n"
(fset 'yes-or-no-p 'y-or-n-p)

(defun tabbar-buffer-groups ()
  (list
   (cond
    ((string-equal "*" (substring (buffer-name) 0 1))
     "Emacs Buffer"
     )
    ((eq major-mode 'dired-mode)
     "Dired"
     )
    (t
     "User Buffer"
     )
    ))) 

; Use Tabbar
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
