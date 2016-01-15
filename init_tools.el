; Tools

(use-package winner
  :ensure t
  :defer t)

(use-package auto-complete
  :ensure t
  :config
  (global-auto-complete-mode t)
  )

(use-package magit
  :ensure t
  :config
  :bind (("C-c g" . magit-status)
	 ("C-c C-g" . magit-status))
  )

(use-package undo-tree
  :defer t
  :ensure t
  :diminish undo-tree-mode
  :config
  (progn
    (global-undo-tree-mode)
    (setq undo-tree-visualizer-timestamps t)
    (setq undo-tree-visualizer-diff t)))


(use-package helm
  :ensure t
  :diminish helm-mode
  :init
  (progn
    (require 'helm-config)
    (setq helm-candidate-number-limit 100)
    (setq helm-M-x-fuzzy-match 1)
    (setq helm-buffers-fuzzy-matching t
	  helm-recentf-fuzzy-match    t)
    ;; From https://gist.github.com/antifuchs/9238468
    ;; (setq helm-idle-delay 0.0 ; update fast sources immediately (doesn't).
    ;;       helm-input-idle-delay 0.01  ; this actually updates things
    ;;                                     ; reeeelatively quickly.
    ;;       helm-yas-display-key-on-candidate t
    ;;       helm-quick-update t
    ;;       helm-M-x-requires-pattern nil
    ;;       helm-ff-skip-boring-files t)
    (helm-mode 1))
  :bind (("C-x C-b" . helm-mini)
         ("C-x b" . helm-mini)
         ("M-y" . helm-show-kill-ring)
         ("M-x" . helm-M-x)
	 ("C-x f" . helm-find-files)
	 ("C-x C-f" . helm-find-files) 
         ;; ("C-x c SPC" . helm-all-mark-rings)
	 ;; ("C-h a" . helm-apropos)
         ;; ("C-x c o" . helm-occur)
         ;; ("C-x c s" . helm-swoop)
         ;; ("C-x c y" . helm-yas-complete)
         ;; ("C-x c Y" . helm-yas-create-snippet-on-region)
	 )
  )

