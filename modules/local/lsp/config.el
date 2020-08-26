;;; tools/lsp+/config.el -*- lexical-binding: t; -*-

(setq
  lsp-completion-provider :capf
  lsp-ui-sideline-show-diagnostics nil
  lsp-ui-sideline-show-hover nil
  lsp-ui-sideline-show-code-actions nil)

(map!
  (:map lsp-ui-mode-map
    :localleader
    (:prefix ("K" . "peek")
      "r" #'lsp-ui-peek-find-references
      "d" #'lsp-ui-peek-find-definitions
      "i" #'lsp-ui-peek-find-implementation)))
