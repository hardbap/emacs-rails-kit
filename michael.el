(setq mac-command-modifier 'meta) ; set CMD key to Meta key

(require 'frame-cmds)
(global-set-key (kbd "C-M-<up>") 'shrink-frame)
(global-set-key (kbd "C-M-<down>") 'enlarge-frame)
(global-set-key (kbd "C-M-<right>") 'enlarge-frame-horizontally)
(global-set-key (kbd "C-M-<left>") 'shrink-frame-horizontally)


(transient-mark-mode t) ; makes the region visible
(setq save-abbrevs nil)

(set-face-font 'default "-apple-Droid_Sans_Mono-medium-normal-normal-*-14-*-*-*-m-0-iso646-1")

; sync kill ring and clipboard
(global-set-key (kbd "C-w") 'clipboard-kill-region)
(global-set-key (kbd "M-w") 'clipboard-kill-ring-save)
(global-set-key (kbd "C-y") 'clipboard-yank)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/git/bin"))
(setq exec-path (append exec-path '("/usr/local/git/bin")))
