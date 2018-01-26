(require 'package)
; add MELPA to repository list
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("elpy" . "http://jorgenschaefer.github.io/packages/") t)
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )
; initialize package.el
(package-initialize)
; start auto-complete with emacs
(require 'auto-complete)
; do default config for auto-complete
(require 'auto-complete-config)
(ac-config-default)
; start yasnippet with emacs
(require 'yasnippet)
(yas-global-mode 1)
; let's define a function which initializes auto-complete-c-headers and gets called for c/c++ hooks
(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers))
; now let's call this function from c/c++ hooks
(add-hook 'c-mode-hook 'my:ac-c-header-init)
(elpy-enable)
(add-to-list 'load-path "~/.emacs.d/vendor/pymacs")
(require 'pymacs)
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)
;; --------------------------------
;;    valentin.lattay@epitech.eu
;; --------------------------------
(defun on-after-init () ;; transparency for any themes
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))
(add-hook 'window-setup-hook 'on-after-init)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") ;; add themes

(global-linum-mode 1)
(setq linum-format "%4d \u2502 ")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (valentin\.lattay)))
 '(custom-safe-themes
   (quote
    ("83c536b8eddf337825d72d339fe7df85201aba153d6f877d528ab2ba38af81eb" "670bd24042b04a7223ca84ecddf68c147b3be25c280d98a1d299eec70589b5a3" "ee33b6f48320a88de3f45f44feaab49a8fb34d279241764adce9d9ed059a8c69" "ed49d077bcc9c10821f4772c773e463b3cdf825f680917a3b04f14cbe0519861" "d1e24a9fa14c8691c4cf82b49891b051f58454a174202cd3b0f7f710904b96c3" "567354a9c9d24c8beff85b3ced9ae2adf20424bdf14131247a3cb076a3a4aee1" "ace9f12e0c00f983068910d9025eefeb5ea7a711e774ee8bb2af5f7376018ad2" default)))
 '(fci-rule-color "#2e2e2e")
 '(package-selected-packages
   (quote
    (anaconda-mode elpy yasnippet-snippets ivy iedit auto-complete-chunk auto-complete-c-headers)))
 '(vc-annotate-background "#3b3b3b")
 '(vc-annotate-color-map
   (quote
    ((20 . "#dd5542")
     (40 . "#CC5542")
     (60 . "#fb8512")
     (80 . "#baba36")
     (100 . "#bdbc61")
     (120 . "#7d7c61")
     (140 . "#6abd50")
     (160 . "#6aaf50")
     (180 . "#6aa350")
     (200 . "#6a9550")
     (220 . "#6a8550")
     (240 . "#6a7550")
     (260 . "#9b55c3")
     (280 . "#6CA0A3")
     (300 . "#528fd1")
     (320 . "#5180b3")
     (340 . "#6380b3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(menu-bar-mode -1) ;; delete menu bar
(column-number-mode 't)
(electric-pair-mode 't)

(ivy-mode 't) ;; ivy-mode->file searching
(global-set-key (kbd "C-s") 'swiper) ;; swiper->line searching through

(require 'whitespace) ;; whitespace appears
(setq whitespace-display-mappings
      '((space-mark   ?\     [?·]     [?.])
	(newline-mark ?\n    [?$ ?\n])
	(tab-mark     ?\t    [?\u2502 ?\t] [?\\ ?\t])))
(setq whitespace-style '(face trailing tabs newline tab-mark newline-mark))

(set-face-background 'whitespace-tab "none")
(set-face-foreground 'whitespace-tab "#883333")
(set-face-background 'whitespace-space "none")
(set-face-foreground 'whitespace-space "#111111")
(set-face-background 'whitespace-newline "none")
(set-face-foreground 'whitespace-newline "#666698")
(global-whitespace-mode t)

(add-hook 'before-save-hook 'whitespace-cleanup) ;; delete whitespace at saving

;; ----------------------------------
;;           EPITECH CONFIG
;; ----------------------------------
(add-to-list 'load-path "~/.emacs.d/lisp")
(load "std.el")
(load "std_comment.el")

(setq-default bash-basic-offset 8)
