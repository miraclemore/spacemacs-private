;;; keybindings.el --- miraclemore-programming Layer packages File for Spacemacs
;;
;; Copyright (c) 2017 Miracle Huang
;;
;; Author: miracle.huang <miraclemore.huang@gmail.com>
;; URL:
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; replace <gtags-map> with correct keymap variable (`helm-gtags-mode-map'?)
(evil-define-key 'normal <gtags-map> (kbd "M-.") 'spacemacs/jump-to-definition)
