;;sagnik's emacs setup 

;; basics things setup 
(setq inhibit-startup-message t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-hl-line-mode t)



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
 '(package-selected-packages '(spacemacs-theme use-package)))
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
		    :family "SF Mono"
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
