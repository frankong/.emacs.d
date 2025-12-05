(set-face-attribute 'helm-selection nil
                    :background "light steel blue"
                    :foreground "black")

;; Match helm-rg faces to standard helm theme
(with-eval-after-load 'helm-rg
  (set-face-attribute 'helm-rg-preview-line-highlight nil
                      :background "light steel blue"
                      :foreground "black")
  (set-face-attribute 'helm-rg-file-match-face nil
                      :foreground "blue"
                      :weight 'bold)
  (set-face-attribute 'helm-rg-line-number-match-face nil
                      :foreground "dark green")
  (set-face-attribute 'helm-rg-title-face nil
                      :background "light steel blue"
                      :foreground "black")
  (set-face-attribute 'helm-rg-base-rg-cmd-face nil
                      :background "light steel blue"
                      :foreground "black")
  (set-face-attribute 'helm-rg-active-arg-face nil
                      :background "light steel blue"
                      :foreground "black")
  (set-face-attribute 'helm-rg-inactive-arg-face nil
                      :background "light steel blue"
                      :foreground "black")
  (set-face-attribute 'helm-rg-extra-arg-face nil
                      :background "light steel blue"
                      :foreground "black")
  (set-face-attribute 'helm-rg-directory-cmd-face nil
                      :background "light steel blue"
                      :foreground "black")
  (set-face-attribute 'helm-rg-directory-header-face nil
                      :background "light steel blue"
                      :foreground "black")
  (set-face-attribute 'helm-rg-colon-separator-ripgrep-output-face nil
                      :foreground "black")
  (set-face-attribute 'helm-rg-match-text-face nil
                      :foreground "red"
                      :weight 'bold))

;; Also set the general helm source header face
(set-face-attribute 'helm-source-header nil
                    :background "light steel blue"
                    :foreground "black"
                    :weight 'bold)
