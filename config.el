(setq user-full-name "Matros Oskal"
      user-mail-address "matros.penalize243@passfwd.com")

;;(setq fancy-splash-image "~/Pictures/a.png")
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-footer)
(defun my-weebery-is-always-greater ()
  (let* ((banner '("⢡⠀⠰⣶⣤⣦⣤⣔⣠⣄⣄⣐⣀⡀⠄⠀⠂⠄⡐⢠⢢⠀⣀⠲⡰⡄⠦⠔⠢⣥⠛⠲⢢⡆⣙⠲⠥⡍⠧⡍⠚⣠⡑⣈⣦⠗⣃⣩⡚⠸⡷⢺⢉⠶⡱⠰⡛⡬⠜⠮⠏⣝⣋⣍"
                   "⠄⠁⢸⣿⣿⡍⣽⢟⣿⣿⣿⣿⣿⠿⣿⣿⣿⣷⣶⣶⣶⣶⣶⣧⣤⣬⣥⣀⣀⣈⣐⣙⣲⢤⠩⠝⠒⣉⠱⢤⣗⢃⠰⢇⡒⠌⠄⠡⡑⣞⠔⡩⡍⠶⣒⣣⢰⠐⣜⠸⢽⣃⢭⢏"
                   "⡀⢁⠂⢸⣯⠟⢜⣵⣿⣿⣿⠻⢿⣿⡷⢸⣿⣿⢣⣿⣿⣿⣿⣿⣿⡹⣿⡏⠻⠹⡛⣿⣿⣿⣿⡿⠿⣿⣿⣶⣶⣶⣶⣾⣶⣥⣬⣭⣤⣤⣙⣊⣲⡝⣐⣛⡈⠊⢓⡄⢆⡣⣌⣬⡵"
                   "⢤⠈⠇⣿⢻⣴⡸⡀⠀⡀⠀⠀⠀⠀⠉⠁⢿⣿⠸⣛⡿⢿⣿⣿⣿⣇⣿⣇⣷⡇⢃⢿⣿⣿⣿⡇⡇⢹⣿⣿⣿⣿⣿⡿⣸⡿⣻⣯⢻⣿⣿⢛⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣿⣷"
                   "⢈⡉⢤⣿⣾⣿⡇⣇⠀⢹⣿⣷⣤⣤⡀⠀⠘⡇⠀⠀⠙⢷⣎⡿⣿⣿⡘⡧⣿⣿⣦⢸⣿⣿⣿⡇⣿⡌⢿⣿⣿⣿⣿⣧⣿⢹⣿⣿⡎⣿⣿⢸⡸⣿⣿⣿⣿⣿⡘⣿⣿⢸⣿⣿⣿"
                   "⠨⢌⢸⣇⣿⣿⡇⣿⣆⠈⣿⣿⣿⣿⡿⠇⢠⠀⢀⠀⠀⠀⠨⣵⣾⣿⣧⠃⣿⣿⣿⣎⢿⣿⣿⣿⢹⣏⡘⣿⣿⣿⡿⢸⣿⣾⣽⣿⣗⢻⣿⢸⣥⢿⣿⣿⣿⣿⢀⣿⢃⣿⣿⣿⣧"
                   "⡐⢈⢸⣿⣿⣿⣷⢹⣿⡧⠙⣿⣿⣿⣷⡀⣜⡄⠘⠃⡠⠂⠀⠘⣿⣿⣿⣧⢹⣿⣿⣿⡜⡙⢿⣿⡎⣿⡖⢸⣿⣿⡇⣧⣽⣯⣭⣿⣿⡆⣿⡏⣿⣎⣿⣿⣿⣿⢨⠘⣼⣿⣿⣿⡷"
                   "⢈⡥⣾⣿⣿⣿⣿⣇⢻⣶⣶⣴⣛⣿⣿⣷⣙⠷⣭⣽⣾⠆⣰⣷⣽⣿⣿⣿⣿⣿⣿⣿⣿⡜⢨⡻⣿⢸⣿⣆⢹⣿⢹⡿⠿⠿⠛⠛⠋⠘⠘⡇⢿⣿⡜⣿⣿⣿⠰⢱⣿⣿⣿⣿⠃"
                   "⢋⠀⣿⢹⣿⣿⣿⡟⣎⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠻⣮⡃⢻⣿⠅⠙⠀⢀⣀⣀⣀⠀⠀⠀⠀⠙⠀⠀⠈⠘⣿⣿⢀⣿⣿⣿⣿⣿⢏"
                   "⣄⢻⣿⡇⠙⣿⣿⣧⢢⡀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣷⣿⣿⣯⣶⣾⣿⣿⣿⣿⣿⣿⣄⠠⢸⠀⠀⣠⠀⠠⠀⣈⢧⣾⣿⣿⣿⣿⣟⠆"
                   "⠲⣸⣇⡇⠀⠎⠻⣿⣧⠻⣶⣌⣻⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⡿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⢤⣬⣄⡈⠁⡠⠃⠀⢁⣾⣿⣿⣿⣿⣿⡿⠢"
                   "⡻⢿⣿⣥⣬⣿⠥⠬⣻⣷⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣟⣿⣿⣿⣯⣟⡿⣿⣿⣟⣯⣿⣿⣾⣝⣿⣿⣿⣿⣿⣿⣿⣿⣦⣉⣟⣚⡙⠛⠛⠛⡛⣤⢏⣾⣿⣿⣿⣿⣿⣿⡟⠥"
                   "⣭⣀⡀⠈⣉⠉⡉⠙⠛⠛⠒⠛⠟⠛⠿⠿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⢷⣾⣽⣻⣿⣽⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡿⠷⡾⡿⣣⣿⣿⢿⣿⣿⣿⣿⣿⣟⡘"
                   "⣚⠓⣦⠼⢢⠅⠮⡡⣞⡤⡘⢆⡐⢠⠐⢄⡀⢠⢀⢠⠀⠀⠀⢈⡠⡉⠉⠉⠉⠙⠛⠒⠚⠛⠟⠛⠾⠭⠽⠿⣿⣿⣿⣿⣿⣿⣿⠿⠫⣗⣩⣣⣞⣵⣿⣟⣳⣿⣿⣿⣿⢿⣼⢠⢃"
                   "⢇⡽⢊⢮⢳⠝⠲⢣⠖⠶⠮⡘⠴⣠⣉⡐⢦⡄⣋⠈⠋⣒⡬⢐⠸⢡⣲⡉⢖⠀⠘⣄⢊⡰⢄⢠⠀⢤⠐⡠⢀⡀⠀⢈⡁⠉⠉⡉⠉⡉⠓⠒⠛⠛⠿⠻⠿⠿⠿⠿⣷⣛⣿⠅⢺"
                   "⣱⠪⡽⢾⡫⢅⣏⠳⠌⡹⠩⡹⠄⢔⡈⢷⣃⠸⣮⠴⠾⠠⣉⠖⢣⣢⡁⠏⠡⡈⢅⡰⠉⡱⢁⠂⠩⢞⠈⡙⢂⠒⠡⠉⡙⣉⡄⠑⡌⣌⠁⡃⡀⢄⠠⡡⢤⢐⠠⢠⡀⣐⣤⠊⡰"))
         (longest-line (apply #'max (mapcar #'length banner))))
    (put-text-property
     (point)
     (dolist (line banner (point))
       (insert (+doom-dashboard--center
                +doom-dashboard--width
                (concat line (make-string (max 0 (- longest-line (length line))) 32)))
               "\n"))
     'face 'doom-dashboard-banner)))
(setq +doom-dashboard-ascii-banner-fn #'my-weebery-is-always-greater)

(add-to-list 'exec-path (expand-file-name "~/.emacs.d/bin/doom"))
(setq shell-file-name "C:/Program Files/PowerShell/7/pwsh.exe")
(setq explicit-shell-file-name "C:/Program Files/PowerShell/7/pwsh.exe")

(setq default-frame-alist '((top . 7) (left . 0) (height . 47) (width . 100)))

(setq doom-font (font-spec :family "JetBrainsMono NFM Light" :size 16 :weigth 'semi-bold)
      doom-variable-pitch-font (font-spec :family "JetBrainsMono NFM Light" :size 18)
      doom-big-font (font-spec :family "JetBrainsMono NFM Light" :size 20))
(after! doom-themes
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))
(custom-set-faces!
  '(font-lock-comment-face :weight bold)
  '(font-lock-keyword-face :weight bold))

(after! lsp-mode
  ;; First, explicitly disable digestif by setting its command to nil
  (setq lsp-latex-server-command nil)

  ;; Tell LSP to forget about digestif entirely
  (setq lsp-disabled-clients '(digestif))

  ;; Now set up texlab as the LaTeX language server
  (setq lsp-tex-server 'texlab)
  (setq lsp-latex-server 'texlab)

  ;; Configure texlab with full settings
  (setq lsp-texlab-server-command "texlab")
  (setq lsp-texlab-build-executable "latexmk")
  (setq lsp-texlab-build-args '("-pdf" "-interaction=nonstopmode" "-synctex=1")))

(use-package! treemacs
  :config
  (setq treemacs-position 'right
        treemacs-missing-project-action 'remove))

(setq-default fill-column 90)

;; Linting
(use-package! rainbow-delimiters
  :hook (emacs-lisp-mode . rainbow-delimiters-mode))
(add-hook 'emacs-lisp-mode-hook #'flycheck-mode)
(setq flycheck-emacs-lisp-load-path 'inherit)

;; Structural editing
(add-hook 'emacs-lisp-mode-hook #'lispy-mode)

;; QoL
(add-hook 'emacs-lisp-mode-hook #'eldoc-mode)
(add-hook 'emacs-lisp-mode-hook #'hl-line-mode)

;; Better eval feedback
(setq eval-expression-print-length nil
      eval-expression-print-level nil)

;; Parenthesis feedback
(after! smartparens
  (show-smartparens-global-mode 1)
  (setq sp-show-pair-delay 0))

(use-package pdf-view
  :hook (pdf-tools-enabled . pdf-view-midnight-minor-mode)
  :hook (pdf-tools-enabled . hide-mode-line-mode)
  :config
  (setq pdf-view-midnight-colors '("#530000" . "#e2cdaf")))

;;(setq reftex-default-bibliography "~/Documents/Latex/")
(use-package lsp-ltex
  :hook (LaTeX-mode . lsp)         ;; Enable LSP in AUCTeX's LaTeX-mode
  :custom
  (lsp-ltex-language "en-US"))

(after! tex-mode
  (add-to-list 'major-mode-remap-alist '(latex-mode . LaTeX-mode)))

(map! :after latex
      :map LaTeX-mode-map
      :localleader
      "l" #'latex-preview-pane-mode)

;; This prevents the built-in latex-mode from loading
(setq auto-mode-alist (rassq-delete-all 'latex-mode auto-mode-alist))

;; This ensures AUCTeX's LaTeX-mode is running for .tex files
;; For extra certainty, we can also handle related file extensions
(dolist (pattern '("\\.tex\\'" "\\.ltx\\'" "\\.dtx\\'" "\\.ins\\'"))
  (add-to-list 'auto-mode-alist `(,pattern . LaTeX-mode)))

(after! org
  (setq org-directory (expand-file-name "~/org/")
        org-clock-sound (expand-file-name "~/Music/orgclock.wav"))
  
  (setq org-hide-emphasis-markers t
        org-src-fontify-natively t
        org-src-window-setup 'current-window)

  (add-hook! 'org-mode-hook #'rainbow-delimiters-mode))

(after! org
  (setq org-agenda-files '("c:/Users/Job_man/org/agenda/"))
  
  (setq org-priority-faces '((?A :foreground "#ff6c6b" :weight bold)
                             (?B :foreground "#fca503" :weight bold)
                             (?C :foreground "#fcec03" :weight bold))
        org-agenda-block-separator 8411)
  
  (setq org-agenda-custom-commands
        '(("v" "A stylized agenda view"
           ((tags "PRIORITY=\"A\""
                  ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                   (org-agenda-overriding-header "High-priority tasks:")))
            (tags "PRIORITY=\"B\""
                  ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                   (org-agenda-overriding-header "Medium-priority tasks:")))
            (tags "PRIORITY=\"C\""
                  ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                   (org-agenda-overriding-header "Low-priority tasks:")))
            (agenda "")
            (alltodo ""))))))

(after! org
  (require 'org-roam-protocol)
  (setq org-roam-directory "~/org/roam/"
        org-roam-graph-viewer "c:/Program Files/BraveSoftware/Brave-Browser/Application/brave.exe"
        ;;org-roam-graph-executable "c:/Program Files/Graphviz/bin/dot.exe"))
        org-roam-graph-executable "c:/msys64/mingw64/bin/dot.exe"))

(after! org
  (require 'org-download)
  (add-hook 'dired-mode-hook 'org-download-enable)
  (setq-default org-download-method 'directory
                org-download-image-dir "~/Pictures/"
                org-download-heading-lvl nil))

(map! "Ø" #'evil-multiedit-toggle-or-restrict-region)

(setenv "LANG" "en_US")
(setenv "DICPATH" "C:/Dictionaries/")

(setq ispell-program-name "hunspell")
(setq ispell-hunspell-dict-paths-alist
      '(("en_US" "C:/Dictionaries/en_US.aff")))
(setq ispell-local-dictionary "en_US")
(setq ispell-local-dictionary-alist
      '(("en_US" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil ("-d" "en_US") nil utf-8)))

(use-package! projectile
  :config
  (projectile-mode 1))
