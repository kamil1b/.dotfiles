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

;; (defun org-current-is-todo ()
;;   (string= "TODO" (org-get-todo-state)))
;; (defun my-org-agenda-skip-all-siblings-but-first ()
;;   (let (should-skip-entry)
;;     (unless (org-current-is-todo)
;;       (setq should-skip-entry t))
;;     (save-excursion
;;       (while (and (not should-skip-entry) (org-goto-sibling t))
;;         (when (org-current-is-todo)
;;           (setq should-skip-entry t))))
;;     (when should-skip-entry
;;       (or (outline-next-heading)
;;           (goto-char (point-max))))))

;; (after! org
;;   (setq
;;    org-directory "~/org"
;;    org-default-notes-file (concat org-directory "/notes/unsorted.org")
;;    org-agenda-files '("~/org/todo/inbox.org"
;;                       "~/org/todo/projects.org"
;;                       "~/org/todo/tickler.org"
;;                       "~/org/todo/review.org")
;;    org-capture-templates '(("t" "Todo [inbox]"
;;                             entry (file+headline "todo/inbox.org" "Tasks")
;;                             "* TODO %i%?")
;;                            ("T" "Tickler"
;;                             entry (file+headline "todo/tickler.org" "Tickler")
;;                             "* %i%? \n %U")
;;                            ("r" "Review"
;;                             entry (file+headline "todo/review.org" "Review")
;;                             "* TODO %i%? :@review:\n SCHEDULED: %t"))
;;    org-refile-targets '(((concat org-directory "/todo/projects.org") :maxlevel . 3)
;;                         ((concat org-directory "/todo/someday.org") :level . 1)
;;                         ((concat org-directory "/todo/tickler.org") :maxlevel . 2))
;;    org-todo-keywords
;;    '((sequence
;;       "TODO(t)"  ; A task that needs doing & is ready to do
;;       "PROJ(p)"  ; An ongoing project that cannot be completed in one step
;;       "STRT(s)"  ; A task that is in progress
;;       "WAIT(w)"  ; Something is holding up this task; or it is paused
;;       "|"
;;       "DONE(d)"  ; Task successfully completed
;;       "KILL(k)") ; Task was cancelled, aborted or is no longer applicable
;;      (sequence
;;       "[ ](T)"   ; A task that needs doing
;;       "[-](S)"   ; Task is in progress
;;       "[?](W)"   ; Task is being held up or paused
;;       "|"
;;       "[X](D)")  ; Task was completed
;;      (sequence
;;       "PROP(p)"
;;       "|"
;;       "APRV(a)"
;;       "REJC(c)"))
;;    org-todo-keyword-faces
;;    '(("[-]"  . +org-todo-active)
;;      ("STRT" . +org-todo-active)
;;      ("PROP" . +org-todo-active)
;;      ("[?]"  . +org-todo-onhold)
;;      ("WAIT" . +org-todo-onhold)
;;      ("PROJ" . +org-todo-project))))

;; (setq org-super-agenda-groups '((:name "Today"
;;                                 :time-grid t
;;                                 :scheduled today)
;;                          (:name "Due today"
;;                                 :deadline today)
;;                          (:name "Important"
;;                                 :priority "A")
;;                          (:name "Overdue"
;;                                 :deadline past)
;;                          (:name "Due soon"
;;                                 :deadline future)
;;                          (:name "Big Outcomes"
;;                                 :tag "bo"))
;; )
