;; Basic

;; Startup stuff
(setq inhibit-splash-screen t)
(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)

;; Saves
(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.saves"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t        ; use versioned backups
 require-final-newline t)

;; Interface
(if (fboundp 'column-number-mode) (column-number-mode t))
(if (fboundp 'menu-bar-mode) (menu-bar-mode nil))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode nil))
(if (fboundp 'show-paren-mode) (show-paren-mode t))
(if (fboundp 'transient-mark-mode) (transient-mark-mode t))

;; Font
(set-background-color "black")
(set-foreground-color "white")
(set-face-attribute 'default nil :height 120)

;; (No) Tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default c-basic-offset 2)
