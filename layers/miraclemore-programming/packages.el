;;; packages.el --- miraclemore-programming layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: chuck_huang <chuck@Miracle-Huang-MBP.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `miraclemore-programming-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `miraclemore-programming/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `miraclemore-programming/pre-init-PACKAGE' and/or
;;   `miraclemore-programming/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(setq miraclemore-programming-packages
  '(
    (cc-mode :location built-in)
    ;; (python :location built-in)
    lispy
    helm-ls-git
    ;; (emacs-lisp :location built-in)
    ))

(defun miraclemore-programming/post-init-cc-mode ()
  (message "miraclemore-programming/post-init-cc-mode")
  (progn
    (add-hook 'c++-mode-hook 'miraclemore-common-cc-mode-setup)
    (add-hook 'c-mode-hook 'miraclemore-common-cc-mode-setup)
  ))

(defun miraclemore-programming/init-lispy ()
  (message "miraclemore-programming/init-lispy")
  (use-package lispy
    :defer t
    :init
    :config
    ))

(defun miraclemore-programming/init-helm-ls-git ()
  (message "miraclemore-programming/init-helm-ls-git")
  (use-package helm-ls-git
    :defer t
    :init
    :config
    ))
;;; packages.el ends here
