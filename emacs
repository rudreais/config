(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; COLOR SCHEME
(custom-set-variables
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))))
(custom-set-faces
 )

(load-theme 'spacemacs-dark)

;; FILES TREE
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; FILES SEARCHER
(require 'ivy)
(ivy-mode 1)
(global-set-key "\C-s" 'swiper) ;; requires swiper

;; LINE NUMBER
(global-linum-mode 1) ; set for default line number

;; comment the 3 lines below for normal line number
(require 'linum-relative)
(linum-on)
(linum-relative-on)

;; UTILITIES
(menu-bar-mode -1) ; delete menu bar
(column-number-mode 't) ; i forgot what's that for
(electric-pair-mode 't) ; auto completion for brackets, parenthesis, etc

