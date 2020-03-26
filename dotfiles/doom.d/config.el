;;; .doom.d/config.el -*- lexical-binding: t; -*-

(add-to-list 'auto-mode-alist '("\\.ttcn3\\'" . ttcn3-mode))

(setq
  doom-font (font-spec :family "Iosevka" :size 12)
  doom-theme 'doom-tomorrow-night
  projectile-project-search-path '("~/Projects"))

(defun my-doom/load-private-envvars ()
    (interactive)
    (doom-load-envvars-file (concat doom-private-dir "env")))
(my-doom/load-private-envvars)

(require 'no-easy-keys)
(no-easy-keys 1)

(use-package! cc-mode
  :config
  (set-pretty-symbols! '(c-mode c++-mode)
    ;; Functional
    :def "void "
    :lambda "[]()"
    ;; Types
    :null "nullptr"
    :true "true" :false "false"
    :int "int" :float "float"
    :str "std::string"
    :bool "bool"
    :tuple "std::tuple"
    ;; Flow
    :not "not"
    :and "&&" :or "||"
    :for "for"
    :return "return"
    :yield "std::this_thread::yield"
    ;; Algoriths
    :not-in "std::none_of"
    :in "std::all_of"
    :some "std::any_of")

  (c-add-style
   "personal" '(
                (c-comment-only-line-offset . 0)
                (c-hanging-braces-alist (brace-list-open)
                                        (brace-entry-open)
                                        (substatement-open after)
                                        (block-close . c-snug-do-while)
                                        (arglist-cont-nonempty))
                (c-cleanup-list brace-else-brace)
                (c-offsets-alist
                 (knr-argdecl-intro . 0)
                 (substatement-open . 0)
                 (substatement-label . 0)
                 (statement-cont . +)
                 (case-label . +)
                 ;; align args with open brace OR don't indent at all (if open
                 ;; brace is at eolp and close brace is after arg with no trailing
                 ;; comma)
                 (brace-list-intro . 0)
                 (brace-list-close . -)
                 (arglist-intro . +)
                 (arglist-close +cc-lineup-arglist-close 0)
                 ;; don't over-indent lambda blocks
                 (inline-open . 0)
                 (inlambda . 0)
                 ;; indent access keywords +1 level, and properties beneath them
                 ;; another level
                 (access-label . -)
                 (inclass +cc-c++-lineup-inclass +)
                 (label . 0)
                 (innamespace . [0]))))

  (when (listp c-default-style)
    (setf (alist-get 'other c-default-style) "personal")))
