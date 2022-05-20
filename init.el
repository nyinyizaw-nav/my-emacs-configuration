;; Define the custom init file

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

 ;; Define and initialise package repositories
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
  (package-initialize)

  ;; use-package to simplify the config file
  (unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))
  (require 'use-package)
(setq use-package-always-ensure 't)

  ;; Keyboard-centric user interface
  (setq inhibit-startup-message t)
  (tool-bar-mode -1)
  (menu-bar-mode -1)
  (scroll-bar-mode -1)
(defalias 'yes-or-no-p 'y-or-n-p)

  ;; Theme
  (use-package exotica-theme
    :config (load-theme 'exotica t))

(set-face-attribute 'default nil :height 160)


