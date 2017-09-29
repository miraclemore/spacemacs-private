;;; packages.el --- miraclemore layer packages file for Spacemacs.
;;
;; Copyright (c) 2017-2018 Miracle Huang
;;
;; Author: miracle.huang<miraclemore.huang@gmail.com>
;; URL:
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
;; added to `miraclemore-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `miraclemore/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `miraclemore/pre-init-PACKAGE' and/or
;;   `miraclemore/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(setq miraclemore-packages
  '(
    projectile
    ))

(defun miraclemore/post-init-projectile ()
    (message "miralcemore/post-init-projectile")
    (progn
      (with-eval-after-load 'projectile
        (progn
          (setq projectile-completion-system 'ivy)
          (spacemacs/set-leader-keys "pf" 'miraclemore/open-file-with-counsel-git)))))
;;; packages.el ends here
