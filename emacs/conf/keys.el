;; Keys

;; delete instead of kill
(require 'delete-word)
(global-set-key (kbd "C-DEL") 'backward-delete-word)
(global-set-key (kbd "M-DEL") 'backward-delete-word)
(global-set-key (kbd "M-d") 'delete-word)

;; goto-line
(global-set-key (kbd "M-g") 'goto-line)

;; ibuffer instead of buffer-menu
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; undo
(global-set-key (kbd "C--") 'undo)
