;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Matt Briggs"
      user-mail-address "matt@mattbriggs.net")

;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.

(setq mac-option-modifier 'super
      mac-command-modifier 'meta)

(setq mb--font-size
      (if IS-MAC 15
        26))

(setq mb--day-theme 'doom-one-light
      mb--night-theme 'doom-one
      mb--theme 'doom-one-light)

(setq doom-font (font-spec :family "JetBrains Mono" :size mb--font-size)
      doom-variable-pitch-font (font-spec :family "JetBrains Mono" :size mb--font-size)
      doom-themes-enable-bold t
      doom-themes-enable-italic t
      doom-theme mb--theme)

(defun mb/day-theme ()
  (interactive)
  (load-theme mb--day-theme t))

(defun mb/night-theme ()
  (interactive)
  (load-theme mb--night-theme t))

(add-hook! 'flycheck-mode-hook :append
  (defun +increase-delay ()
    (setq flycheck-display-errors-delay 2.5)))

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Dropbox/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

(+global-word-wrap-mode +1)

(setq prescient-filter-method '(literal initialism))
;; (setq company-dabbrev-downcase 0)
;; (setq company-idle-delay 0.5)

(setq display-line-numbers-type t)

;; needed for things like LSP to not suck
(setq read-process-output-max (* 4 (* 1024 1024)))

(add-hook! 'snippet-mode-hook #'+yas-snippet-newline-h)
