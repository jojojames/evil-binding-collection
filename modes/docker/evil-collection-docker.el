;;; evil-collection-docker.el --- Evil bindings for docker.el -*- lexical-binding: t -*-

;; URL: https://github.com/emacs-evil/evil-collection
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1"))
;; Keywords: evil, docker, tools

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; Evil bindings for docker.el

;;; Code:
(require 'docker nil t)
(require 'evil-collection)

(defconst evil-collection-docker-maps '(docker-container-mode-map
                                        docker-image-mode-map
                                        docker-machine-mode-map
                                        docker-network-mode-map
                                        docker-volume-mode-map))

(defun evil-collection-docker-setup ()
  "Set up `evil' bindings for `docker'."
  (evil-collection-define-key 'normal 'docker-container-mode-map
    ";"  'docker-container-ls
    "?"  'docker-container-help
    "C"  'docker-container-cp
    "D"  'docker-container-rm
    "I"  'docker-container-inspect
    "K"  'docker-container-kill
    "L"  'docker-container-logs
    "O"  'docker-container-stop
    "P"  'docker-container-pause
    "R"  'docker-container-restart
    "S"  'docker-container-start
    "a"  'docker-container-attach
    "b"  'docker-container-shell
    "d"  'docker-container-diff
    "f"  'docker-container-find-file
    "r"  'docker-container-rename-selection)

  (evil-collection-define-key 'normal 'docker-image-mode-map
    ";"  'docker-image-ls
    "?"  'docker-image-help
    "D"  'docker-image-rm
    "F"  'docker-image-pull
    "I"  'docker-image-inspect
    "P"  'docker-image-push
    "R"  'docker-image-run
    "T"  'docker-image-tag-selection)

  (evil-collection-define-key 'normal 'docker-machine-mode-map
    ";"  'docker-machine-ls
    "?"  'docker-machine-help
    "C"  'docker-machine-create
    "D"  'docker-machine-rm
    "E"  'docker-machine-env-selection
    "O"  'docker-machine-stop
    "R"  'docker-machine-restart
    "S"  'docker-machine-start)

  (evil-collection-define-key 'normal 'docker-network-mode-map
    ";"  'docker-network-ls
    "?"  'docker-network-help
    "D"  'docker-network-rm)

  (evil-collection-define-key 'normal 'docker-volume-mode-map
    ";"  'docker-volume-ls
    "?"  'docker-volume-help
    "D"  'docker-volume-rm
    "d"  'docker-volume-dired-selection))

(provide 'evil-collection-docker)

;;; evil-collection-docker.el ends here
