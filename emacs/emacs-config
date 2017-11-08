;; --------------------------------
;;    valentin.lattay@epitech.eu
;; --------------------------------
(defun on-after-init () ;; transparency for any themes
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))
(add-hook 'window-setup-hook 'on-after-init)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") ;; add themes

(package-initialize)

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
 '(custom-enabled-themes (quote (manoj-dark)))
 '(custom-safe-themes
   (quote
    ("c0429683ff6ea4bed2f3d5a1c94717dff22d4f52ec1f5ebaf67dfab5d78787f1" "20e23cba00cf376ea6f20049022241c02a315547fc86df007544852c94ab44cb" "eb34ed27768eeea1e423f8987b060e49829aac558fe0669b3de0227da67b661c" default)))
 '(diff-switches "-u")
 '(package-selected-packages (quote (ivy))))

(menu-bar-mode -1) ;; delete menu bar
(column-number-mode 't)
(electric-pair-mode 't)
(require 'whitespace) ;; whitespace appears

(ivy-mode 't) ;; ivy-mode->file searching
(global-set-key (kbd "C-s") 'swiper) ;; swiper->line searching through

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
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
