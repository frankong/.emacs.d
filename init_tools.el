;;; Tools

(use-package winner
  :ensure t
  :defer t)

;; Save recent files
(use-package recentf
  :ensure t
  :config
  (setq recentf-max-menu-items 100)
  (recentf-mode 1)
  )

;; Save history after close
(use-package savehist
  :ensure t
  :config
  (savehist-mode 1))

;; Auto complete anything
(use-package company
  :ensure t
  :config
  (global-company-mode t)
;  (setq company-idle-delay 0.25
;	company-auto-complete t)
  )

;; Git repo integration
(use-package magit
  :ensure t
  :config
  :bind (("C-c g" . magit-status)
	 ("C-c C-g" . magit-status))
  )

;; Undo and redo in the natural way
;; C-c u to open undo tree
(use-package undo-tree
  :ensure t
  :config 
  (global-undo-tree-mode t)
  (setq undo-tree-visualizer-timestamps t)
  :bind (
	 ("C-_" . undo-tree-undo)
	 ("M-_" . undo-tree-redo)
	 ("C-c u" . undo-tree-visualize)
	 ("C-c C-u" . undo-tree-visualize)
	 )
  )

;; Replace emacs buffer with Helm version
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
	  helm-split-window-in-side-p t
	  helm-ff-file-name-history-use-recentf t
	  helm-minibuffer-history 100
	  )
    (helm-mode 1))
  :bind (
	 ("C-x C-b" . helm-mini)
         ("C-x b" . helm-mini)
         ("M-y" . helm-show-kill-ring)
         ("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
	 ("C-x r l" . helm-filtered-bookmarks)
	 ;("C-c o" . helm-occur)
	 ;("C-c C-o" . helm-occur)
	 )
  )


(load "~/.emacs.d/init_helm.el")


;; Use Helm with gtags
;; M-. on variable to go to function
;; M-, to go back
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

;; Auto close parenthesis
(use-package smartparens
  :ensure t
  :config
  (smartparens-mode t))

;; Check code syntax 
(use-package flycheck
  :ensure t
  :config
  (global-flycheck-mode 1)
  )

;; Expand code snippet to real code
;; Example
;; for -> for( i = 0 ... )
;; main -> int main () {}
;; (use-package yasnippet
;;   :ensure t
;;   :config
;;   (yas-global-mode 1)
;;   )

;; Refactor variable in file
;; C-; on variable
(use-package iedit
  :ensure t
  )

;; Understand C/C++ semantics to autocomplete
(use-package semantic
  :ensure t
  :config
  (semantic-mode 1)
  )

;; Projectile
;; C-c p p Find files in projects
(use-package projectile
  :ensure t
  :config
  (setq projectile-enable-caching t)
  (setq projectile-require-project-root nil)
  (projectile-global-mode 1)
  )

(use-package helm-projectile
  :ensure t
  :config
  (helm-projectile-on)
  )


;; Require Auctex
(use-package tex-site
  :ensure auctex
  )


;; Flycheck popup
(use-package flycheck-tip
  :ensure t
  :config
  (flycheck-tip-use-timer 'verbose)
  )

;; CUDA
(use-package cuda-mode
  :ensure t
  )

;; Reveal in  finder
(use-package reveal-in-osx-finder
  :ensure t
  )


;; JEDI (auto-complete for python)
;; (use-package jedi
;;   :ensure t
;;   :init
;;   (add-hook 'python-mode-hook 'jedi:setup)
;;   )
;; (use-package company-jedi
;;   :ensure t
;;   :config
;;   (progn
;;     (push 'company-jedi company-backends)
;;     ;; Disable auto-complete when we start jedi, because we don't want both
;;     ;; auto-complete and company running
;;     (add-hook 'jedi-mode-hook (lambda () (auto-complete-mode -1)))
;;     )
;;   )

;; Sets the python interpreter to be ipython. To trick emacs into
;; thinking we're still running regular python, we run ipython in
;; classic mode.
;; (setq
;;  python-shell-interpreter "ipython"
;;  python-shell-interpreter-args "-i --classic")


(use-package markdown-mode
  :ensure t
  )

(use-package ein
  :ensure t
  :config
  (setq ein:use-auto-complete 1)
  )

(use-package elpy
  :ensure t
  :config
  (elpy-enable)
  )
