;;; funcs.el --- miraclemore layer functions file for Spacemacs.
;;
;; Copyright (c) 2017-2018 Miracle Huang
;;
;; Author: miracle.huang<miraclemore.huang@gmail.com>
;; URL:
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Code:

(defun miraclemore/git-project-root ()
  (let ((directory default-directory))
    (locate-dominating-file directory ".git")))

(defun miraclemore/open-file-with-counsel-git ()
  (interactive)
  (if (miraclemore/git-project-root)
      (counsel-git)
    (if (projectile-project-p)
        (projectile-find-file)
      (counsel-file-jump))))

(defun miraclemore/open-file-with-helm-git ()
  (interactive)
  (if (miraclemore/git-project-root)
      (helm-ls-git-ls)
    (if (projectile-project-p)
        (projectile-find-file)
      (counsel-file-jump))))
;;; funcs.el ends here
