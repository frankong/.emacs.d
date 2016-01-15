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
  :ensure t
  :config
  (progn
    (global-undo-tree-mode t)
    (setq undo-tree-visualizer-timestamps t))
  :bind (
	 ("C-c u" . undo-tree-visualize)
	 ("C-c C-u" . undo-tree-visualize)
	 )
  )


(use-package helm
  :ensure t
  :diminish helm-mode
  :init
  (progn
    (require 'helm-config)
    (setq helm-candidate-number-limit 100
	  helm-M-x-fuzzy-match 1
	  helm-buffers-fuzzy-matching t
	  helm-recentf-fuzzy-match    t
	  )
    (helm-mode 1))
  :bind (
	 ("C-x C-b" . helm-mini)
         ("C-x b" . helm-mini)
         ("M-y" . helm-show-kill-ring)
         ("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files) 
	 )
  )

(use-package helm-gtags
  :ensure t
  :init
  (setq helm-gtags-ignore-case t
	helm-gtags-auto-update t
	helm-gtags-use-input-at-cursor t
	)
  :config
  (helm-gtags-mode t)
  :bind (
	 ("M-." . helm-gtags-dwim)
	 ("M-," . helm-gtags-pop-stack)
	 )
  )
