(setq mac-command-modifier 'meta)
(require 'frame-cmds)
(global-set-key (kbd "C-M-<up>") 'shrink-frame)

(transient-mark-mode 1) ; makes the region visible
(line-number-mode 1)    ; makes the line number show up