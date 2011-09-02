;; Hooks

(defun delete-trailing-blank-lines ()
  "Deletes blank lines at the end of the buffer."
  (interactive)
  (save-excursion
    (save-restriction
      (widen)
      (goto-char (point-max))
      (delete-blank-lines))))

(add-hook
 'before-save-hook
 (lambda()
   (delete-trailing-blank-lines)
   (delete-trailing-whitespace)
   (untabify (point-min) (point-max))))
