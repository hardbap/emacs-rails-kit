;; emacs-rails.el - config that will make working with rails seriously fun

;; Textmate - helpful mode from defunkt
(load-lib-dir "vendor/textmate")
(require 'textmate)
(textmate-mode t)

;; Ruby
(require 'ruby-mode)
(require 'ruby-electric)
(add-to-list 'auto-mode-alist '("Capfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))

(global-set-key (kbd "M-r") 'ruby-compilation-this-buffer)

;; Rinari
(load-lib-dir "vendor/jump")
(load-lib-dir "vendor/rinari")
(require 'rinari)

;; Rhtml
(load-lib-dir "vendor/rhtml")
(require 'rhtml-mode)

;; Over-ride M-s in rhtml mode
(define-key rhtml-mode-map (kbd "M-s") 'save-buffer)

;; Rspec
(load-lib-dir "vendor/rspec")
(require 'rspec-mode)

;; Haml & Sass
(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(require 'sass-mode)
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))

;; YAML
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; C-l inserts a hash mark
(eval-after-load 'ruby-mode 
  '(progn
     (define-key ruby-mode-map (kbd "C-l") " => ")))
(eval-after-load 'rhtml-mode
  '(progn
     (define-key rhtml-mode-map (kbd "C-l") " => ")))
(eval-after-load 'rhtml-mode
  '(progn
     (define-key rhtml-mode-map (kbd "C->") 'rinari-insert-erb-skeleton)))

;; You must install yasnippet from ELPA before uncommenting and using
;; the following
; (require 'yasnippet)
; (yas/initialize)
; (yas/load-directory
;  (concat (file-name-directory (or load-file-name buffer-file-name))
; 	 "vendor/yasnippets-rails/rails-snippets/"))
