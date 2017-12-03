(defun fix-c-indent-offset-according-to-syntax-context (key val)
  ;; remove the old element
  (setq c-offsets-alist (delq (assoc key c-offsets-alist) c-offsets-alist))
  ;; new value
  (add-to-list 'c-offsets-alist '(key . val)))

(defun miraclemore-common-cc-mode-setup ()
  (message "miracle-c-mode-setup called (buffer-file-name)=%s" (buffer-file-name))

  (setq-default c-default-style "linux")
  (setq c-basic-offset 4)

  ;; give me NO newline automatically after electric expressions are entered
  (setq c-auto-newline nil)

  ;; syntax-highlight aggressively
  ;; (setq font-lock-support-mode 'lazy-lock-mode)
  (setq lazy-lock-defer-contextually t)
  (setq lazy-lock-defer-time 0)

  ;; make DEL take all previous whitespace with it
  (c-toggle-hungry-state 1)

  ;; make a #define be left-aligned
  (setq c-electric-pound-behavior (quote (alignleft)))

  ;; (setq cc-search-directories '("." "/usr/include" "/usr/local/include/*" "../*/include"))

  ;; indent
  ;; google "C/C++/Java code indentation in Emacs" for more advanced skills
  ;; C code:
  ;;   if(1) // press ENTER here, zero means no indentation
  (fix-c-indent-offset-according-to-syntax-context 'substatement 0)
  ;;   void fn() // press ENTER here, zero means no indentation
  (fix-c-indent-offset-according-to-syntax-context 'func-decl-cont 0))

(defun miracle-c-mode-setup ()
  (miraclemore-common-cc-mode-setup)
  (setq c-c++-default-mode-for-headers c-mode))

(defun miracle-c++-mode-setup ()
  (miraclemore-common-cc-mode-setup)
  (setq c-c++-default-mode-for-headers c++-mode))
