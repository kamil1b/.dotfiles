;;; .doom.d/config.el -*- lexical-binding: t; -*-

(add-to-list 'auto-mode-alist '("\\.ttcn3\\'" . ttcn3-mode))

(setq
  doom-font (font-spec :family "Hack Nerd Font" :size 12)
  doom-big-font (font-spec :family "Hack Nerd Font" :size 18)
  doom-theme 'doom-tomorrow-night
  projectile-project-search-path '("~/Projects"))

(defun my-doom/load-private-envvars ()
    (interactive)
    (doom-load-envvars-file (concat doom-private-dir "env")))
(my-doom/load-private-envvars)

(require 'no-easy-keys)
(no-easy-keys 1)
