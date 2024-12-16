
(cl:in-package :asdf)

(defsystem "mega_rover_project_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetDataGUI" :depends-on ("_package_GetDataGUI"))
    (:file "_package_GetDataGUI" :depends-on ("_package"))
  ))