;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Matt Briggs"
      user-mail-address "matt@mattbriggs.net")

;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
(setq doom-font (font-spec :family "JetBrains Mono" :size 21)
      doom-variable-pitch-font (font-spec :family "JetBrains Mono" :size 21))

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
(setq company-idle-delay 0.5)

(setq display-line-numbers-type t)


(add-hook! 'snippet-mode-hook #'+yas-snippet-newline-h)