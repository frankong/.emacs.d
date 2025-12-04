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
                      :foreground "dark green"))
