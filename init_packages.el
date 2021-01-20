;;; Tools

(use-package smart-mode-line
  :ensure t
  :config
  (setq sml/no-confirm-load-theme t)
  (sml/apply-theme 'light)
  (sml/setup)
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
  )

;; Git repo integration
(use-package magit
  :ensure t
  :defer t
  :config
  :bind 
  ("C-c g" . magit-status)
  ("C-c C-g" . magit-status)
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
  :bind
  ("M-." . helm-gtags-dwim)
  ("M-," . helm-gtags-pop-stack)
  )

;; Auto close parenthesis
(use-package smartparens
  :ensure t
  :config
  (smartparens-mode t)
)

;; Check code syntax 
(use-package flycheck
  :ensure t
  :config
  (global-flycheck-mode 1)
  )

;; Flycheck popup
(use-package flycheck-pos-tip
  :ensure t
  :config
  (flycheck-pos-tip-mode 1)
  )

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
  (projectile-mode 1)
  )

(use-package helm-projectile
  :ensure t
  :config
  (helm-projectile-on)
  )

;; Require Auctex
(use-package auctex
  :ensure t
  :mode ("\\.tex\\'" . latex-mode)
  :commands (latex-mode LaTeX-mode plain-tex-mode)
  :init
  (progn
    (add-hook 'LaTeX-mode-hook #'LaTeX-preview-setup)
    (add-hook 'LaTeX-mode-hook #'flyspell-mode)
    (add-hook 'LaTeX-mode-hook #'turn-on-reftex)
    (setq TeX-auto-save t
	  TeX-parse-self t
	  TeX-save-query nil
	  TeX-PDF-mode t)
    (setq-default TeX-master nil)))

;; CUDA
(use-package cuda-mode
  :ensure t
  :mode "\\.cu\\'"
  )

;; Reveal in  finder
(use-package reveal-in-osx-finder
  :ensure t
  )

;; Markdown
(use-package markdown-mode
  :ensure t
  :mode "\\.md\\'"
  )

;; Anaconda
(use-package anaconda-mode
  :ensure t
  :commands anaconda-mode
  :diminish anaconda-mode
  :init
  (progn
    (add-hook 'python-mode-hook 'anaconda-mode)
    (add-hook 'python-mode-hook 'eldoc-mode)))

(use-package company-anaconda
  :ensure t
  :init (add-to-list 'company-backends 'company-anaconda))
	    
;; Indent
(use-package dtrt-indent
  :ensure t
  :config
  (dtrt-indent-mode t)
  )

;; Yaml
(use-package yaml-mode
  :ensure t
  :mode "\\.yml\\'"
  )

;; Load PATH from shell for osx
(use-package exec-path-from-shell
  :ensure t
  :config
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))
  )

;; CSV
(use-package csv-mode
  :ensure t
  :mode ("\\.csv\\'" "\\.tsv\\'")
  )


