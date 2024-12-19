
(cl:in-package :asdf)

(defsystem "mega_rover_project_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SPI_data" :depends-on ("_package_SPI_data"))
    (:file "_package_SPI_data" :depends-on ("_package"))
    (:file "controller" :depends-on ("_package_controller"))
    (:file "_package_controller" :depends-on ("_package"))
    (:file "localization_stack" :depends-on ("_package_localization_stack"))
    (:file "_package_localization_stack" :depends-on ("_package"))
    (:file "mine" :depends-on ("_package_mine"))
    (:file "_package_mine" :depends-on ("_package"))
  ))