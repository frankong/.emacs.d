;; Tabbar settings
(set-face-attribute
 'tabbar-default nil
 :background "gray90"
 :foreground "gray90"
 :box '(:line-width 1 :color "gray90" :style nil))
(set-face-attribute
 'tabbar-selected nil
 :background "white"
 :foreground "black"
 :box '(:line-width 5 :color "white" :style nil))
(set-face-attribute
 'tabbar-unselected nil
 :background "gray90"
 :foreground "black"
 :box '(:line-width 5 :color "gray90" :style nil))
(set-face-attribute
 'tabbar-highlight nil
 :background "white"
 :foreground "black"
 :underline nil
 :box '(:line-width 5 :color "white" :style nil))
(set-face-attribute
 'tabbar-button nil
 :box '(:line-width 1 :color "gray90" :style nil))
(set-face-attribute
 'tabbar-separator nil
 :background "gray90"
 :height 0.6)


;; Change padding of the tabs
;; we also need to set separator to avoid overlapping tabs by highlighted tabs
(custom-set-variables
 '(tabbar-separator (quote (0.5))))
;; adding spaces
(defun tabbar-buffer-tab-label (tab)
  "Return a label for TAB.
That is, a string used to represent it on the tab bar."
  (let ((label  (if tabbar--buffer-show-groups
                    (format "[%s]  " (tabbar-tab-tabset tab))
                  (format "%s  " (tabbar-tab-value tab)))))
    ;; Unless the tab bar auto scrolls to keep the selected tab
    ;; visible, shorten the tab label to keep as many tabs as possible
    ;; in the visible area of the tab bar.
    (if tabbar-auto-scroll-flag
        label
      (tabbar-shorten
       label (max 1 (/ (window-width)
                       (length (tabbar-view
                                (tabbar-current-tabset)))))))))


(defun tabbar-buffer-groups ()
  (list
   (cond
    ((or (string= "*" (substring (buffer-name) 0 1))
	 (string= "TAGS" (substring (buffer-name) 0 4)))
     "Emacs Buffer"
     )
    ((eq major-mode 'dired-mode)
     "Dired"
     )
    (t
     "User Buffer"
     )
    ))) 
