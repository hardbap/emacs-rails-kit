;; (setq mac-command-modifier 'meta) ; set CMD key to Meta key

(require 'frame-cmds)
(global-set-key (kbd "C-M-<up>") 'shrink-frame)
(global-set-key (kbd "C-M-<down>") 'enlarge-frame)
(global-set-key (kbd "C-M-<right>") 'enlarge-frame-horizontally)
(global-set-key (kbd "C-M-<left>") 'shrink-frame-horizontally)

(transient-mark-mode t) ;; makes the region visible
(setq save-abbrevs nil) ;; stop being prompted to save abbrevs

(set-face-font 'default "-apple-Droid_Sans_Mono-medium-normal-normal-*-14-*-*-*-m-0-iso646-1")

;; sync kill ring and clipboard
(global-set-key (kbd "C-w") 'clipboard-kill-region)
(global-set-key (kbd "M-w") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-y") 'clipboard-yank)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; tell vc mode where git is
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/git/bin"))
(setq exec-path (append exec-path '("/usr/local/git/bin")))

;; set the initial fram size
(setq initial-frame-alist '((width . 160) (height . 60)))

;; Put autosave files (ie #foo#) in one place, *not*
;; scattered all over the file system!
(defvar autosave-dir
  (concat "/tmp/emacs_autosaves/" (user-login-name) "/"))
  (make-directory autosave-dir t)
  (setq auto-save-file-name-transforms `(("\\(?:[^/]*/\\)*\\(.*\\)" ,(concat
  autosave-dir "\\1") t)))

;; Put backup files (ie foo~) in one place too. (The backup-directory-alist
;; list contains regexp=>directory mappings; filenames matching a regexp are
;; backed up in the corresponding directory. Emacs will mkdir it if necessary.)
(defvar backup-dir (concat "/tmp/emacs_backups/" (user-login-name) "/"))
(setq backup-directory-alist (list (cons "." backup-dir)))

;; use multi-term and tell it what shell to use
(require 'multi-term)
(setq multi-term-program "/bin/bash")

(add-to-list 'load-path "~/.emacs.d/vendor/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets")
