
(cl:in-package :asdf)

(defsystem "final_project-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AprilTag" :depends-on ("_package_AprilTag"))
    (:file "_package_AprilTag" :depends-on ("_package"))
  ))