;; -*- lexical-binding: t; -*-

;; Visual Undo
(use-package vundo
  :straight t
  :general
  (me-global-def "ov" '(vundo :which-key "Visual Undo"))
  :init
  (defconst +vundo-unicode-symbols
    '((selected-node   . ?●)
      (node            . ?○)
      (vertical-stem   . ?│)
      (branch          . ?├)
      (last-branch     . ?╰)
      (horizontal-stem . ?─)))

  :config
  (setq vundo-glyph-alist +vundo-unicode-symbols
        vundo-compact-display t
        vundo-window-max-height 6))

(use-package undo-fu
  :straight t
  :config
  (with-eval-after-load 'evil
    (evil-set-undo-system 'undo-fu)))

(use-package undo-fu-session
  :straight t
  :after undo-fu
  :config
  (global-undo-fu-session-mode 1))
