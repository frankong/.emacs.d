;;; Settings

;; Set backup directory under .emacs.d
;; Moves all ~ files away
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

;; Switch buffer
(global-set-key (kbd "C-x o") 'other-window)
(global-set-key (kbd "C-x C-o") 'other-window)

;; Switch header / source

(global-set-key (kbd "C-c o") 'ff-find-other-file)
(global-set-key (kbd "C-c C-o") 'ff-find-other-file)


;; Set C indent to 8
(setq c-default-style "k&r"
      c-basic-offset 8)


;; Change "Yes or no" to "y or n"
(fset 'yes-or-no-p 'y-or-n-p)


;; Full screen
(define-key global-map [(M-return)] 
  'toggle-frame-fullscreen)

;; Auto refresh files
(global-auto-revert-mode t)


(setq-default TeX-master nil) ; Query for master file.


;; Smooth scroll
(setq scroll-step            1)


;; Text size
(global-set-key (kbd "M-=") 'text-scale-increase)
(global-set-key (kbd "M--") 'text-scale-decrease)
