;;sagnik's emacs setup 

;; basics things setup 
(setq inhibit-startup-message t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-hl-line-mode t)

;;emacs lisp highlight function hook
(add-hook 'emacs-lisp-mode-hook 'highlight-defined-mode)

;;eldoc setp
  (add-hook 'emacs-lisp-mode-hook 'eldoc-mode)
  (add-hook 'lisp-interaction-mode-hook 'eldoc-mode)
  (add-hook 'ielm-mode-hook 'eldoc-mode)

 ;; Melpa setup 
(require 'package)
(add-to-list 'package-archives
'("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(unless (package-installed-p 'use-package)
(package-refresh-contents)
(package-install 'use-package))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(telephone-line highlight-defined projectile helm lsp-java alchemist ranger ## elpygen elpy spacemacs-theme use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;color-theme setup 

(use-package spacemacs-theme
  :defer t
  :init (load-theme 'spacemacs-dark t))

(setq custom-safe-themes t)


;;font setup

(set-face-attribute 'default nil
		    :family "Monospace"
		    :height 140
		    :weight 'normal
		    :width 'normal)

;;set line number 
;(setq line-number-mode t)

(global-display-line-numbers-mode 1)


;;copy-paste between system and emacs 

(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; bracket-autocomplete 

;(setq electric-pair-preserve-balance nil)
;(require 'autopair)
;(autopair-global-mode) ;; enable autopair in all buffers
(electric-pair-mode 1)
;for colored baalanced parenthesis
(show-paren-mode 1)

;;python-package

(use-package elpy
  :ensure t
  :init
  (elpy-enable))

;;autopep8
;(use-package py-autopep8)

;; Enable autopep8

;(require 'py-autopep8)
;(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;;magit for git support
;(require 'magit)


;;Remove backup files
(setq make-backup-files nil)



;;elixir setup :- elixir-mode and alchecmist from MELPA
(unless (package-installed-p 'elixir-mode)
  (package-install 'elixir-mode))

;;java-setup
(require 'lsp-java)
(add-hook 'java-mode-hook #'lsp)

(condition-case nil
    (require 'use-package)
  (file-error
   (require 'package)
   (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
   (package-initialize)
   (package-refresh-contents)
   (package-install 'use-package)
   (setq use-package-always-ensure t)
   (require 'use-package)))

(use-package projectile)
;(use-package flycheck)
(use-package yasnippet :config (yas-global-mode))
(use-package lsp-mode :hook ((lsp-mode . lsp-enable-which-key-integration))
  :config (setq lsp-completion-enable-additional-text-edit nil))
(use-package hydra)
(use-package company)
;(use-package lsp-ui)
;(use-package which-key :config (which-key-mode))
(use-package lsp-java :config (add-hook 'java-mode-hook 'lsp))
(use-package dap-mode :after lsp-mode :config (dap-auto-configure-mode))
(use-package dap-java :ensure nil)
;(use-package helm-lsp)
(use-package helm
  :config (helm-mode))
(use-package lsp-treemacs)

;;markdown mode
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

;;telephone-line powerline 
(require 'telephone-line)
(telephone-line-mode 1)


