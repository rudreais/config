(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(setq package-enable-at-startup nil)

;; COLOR SCHEME
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(fci-rule-color "#073642")
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(linum-relative-current-symbol "")
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(package-selected-packages
   (quote
    (popup-edit-menu magit solarized-theme tide rust-mode all-the-icons spacemacs-theme yasnippet swiper nlinum neotree linum-relative)))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#ffff7fff0000")
     (60 . "#ffffbfff0000")
     (80 . "#b58900")
     (100 . "#ffffffff0000")
     (120 . "#ffffffff0000")
     (140 . "#ffffffff0000")
     (160 . "#ffffffff0000")
     (180 . "#859900")
     (200 . "#aaaaffff5555")
     (220 . "#7fffffff7fff")
     (240 . "#5555ffffaaaa")
     (260 . "#2aaaffffd554")
     (280 . "#2aa198")
     (300 . "#0000ffffffff")
     (320 . "#0000ffffffff")
     (340 . "#0000ffffffff")
     (360 . "#268bd2"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

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

(require 'powerline)
(powerline-default-theme)

(windmove-default-keybindings 'meta)

(require 'all-the-icons)

(setq c-default-style "linux"
      c-basic-offset 8
      tab-width 8
      indent-tabs-mode t)

(toggle-scroll-bar -1)

(require 'whitespace)
(setq whitespace-display-mappings
      '((space-mark   ?\     [?·]     [?.])
	(newline-mark ?\n    [?$ ?\n])
	(tab-mark     ?\t    [?. ?\t] [?\\ ?\t])))

(setq whitespace-style '(face trailing tabs tab-mark newline newline-mark))

(global-whitespace-mode t)
(add-hook 'before-save-hook 'whitespace-cleanup) ;; delete whitespace at saving

(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

(setq x-super-keysym 'meta)

(global-set-key (kbd "C-x g") 'magit-status)
