;;; lang/javascript+/config.el -*- lexical-binding: t; -*-


(add-hook! typescript-mode 'add-node-modules-path)

(use-package jest
  :after (js2-mode)
  :hook (js2-mode . jest-minor-mode))

(use-package jest
  :after (typescript-mode)
  :hook (typescript-mode . jest-minor-mode))
