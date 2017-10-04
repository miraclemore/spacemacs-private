
(defun miraclemore-common-cc-mode-setup ()
  (setq c-basic-offset 4)

  ;; give me NO newline automatically after electric expressions are entered
  (setq c-auto-newline nil)

  ;; syntax-highlight aggressively
  ;; (setq font-lock-support-mode 'lazy-lock-mode)
  (setq lazy-lock-defer-contextually t)
  (setq lazy-lock-defer-time 0)

  ;; make DEL take all previous whitespace with it
  (c-toggle-hungry-state 1))
