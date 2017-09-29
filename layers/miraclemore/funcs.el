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
    (message "miraclemore/git-project-root")
    (locate-dominating-file directory ".git")))

(defun miraclemore/open-file-with-counsel-git ()
  (interactive)
  (if (miraclemore/git-project-root)
      (counsel-git)
    (if (projectile-project-p)
        (projectile-find-file)
      (counsel-file-jump))))

;;; funcs.el ends here
