;; Load all the files

(defun jaslong-add-to-load-path (dir)
  "Adds dir and subdirectories to load path."
  (let ((default-directory dir))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))

(defun jaslong-load-directory (dir)
  "Loads .el files in dir."
  (mapcar 'load-file (directory-files dir t "\\.el\\'")))

(jaslong-add-to-load-path "~/emacs/lib")
(jaslong-load-directory "~/emacs/conf")
