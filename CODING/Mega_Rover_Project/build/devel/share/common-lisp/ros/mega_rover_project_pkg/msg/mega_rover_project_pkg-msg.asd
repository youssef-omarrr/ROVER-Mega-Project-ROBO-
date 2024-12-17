
(cl:in-package :asdf)

(defsystem "mega_rover_project_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SPI_data" :depends-on ("_package_SPI_data"))
    (:file "_package_SPI_data" :depends-on ("_package"))
    (:file "custom_msg" :depends-on ("_package_custom_msg"))
    (:file "_package_custom_msg" :depends-on ("_package"))
  ))