
; Disable toolbar
(tool-bar-mode -1)


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
	     :ensure tabbar
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
