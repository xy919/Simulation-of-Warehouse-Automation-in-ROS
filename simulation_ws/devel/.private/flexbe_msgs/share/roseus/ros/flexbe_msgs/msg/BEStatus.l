;; Auto-generated. Do not edit!


(when (boundp 'flexbe_msgs::BEStatus)
  (if (not (find-package "FLEXBE_MSGS"))
    (make-package "FLEXBE_MSGS"))
  (shadow 'BEStatus (find-package "FLEXBE_MSGS")))
(unless (find-package "FLEXBE_MSGS::BESTATUS")
  (make-package "FLEXBE_MSGS::BESTATUS"))

(in-package "ROS")
;;//! \htmlinclude BEStatus.msg.html


(intern "*STARTED*" (find-package "FLEXBE_MSGS::BESTATUS"))
(shadow '*STARTED* (find-package "FLEXBE_MSGS::BESTATUS"))
(defconstant flexbe_msgs::BEStatus::*STARTED* 0)
(intern "*FINISHED*" (find-package "FLEXBE_MSGS::BESTATUS"))
(shadow '*FINISHED* (find-package "FLEXBE_MSGS::BESTATUS"))
(defconstant flexbe_msgs::BEStatus::*FINISHED* 1)
(intern "*FAILED*" (find-package "FLEXBE_MSGS::BESTATUS"))
(shadow '*FAILED* (find-package "FLEXBE_MSGS::BESTATUS"))
(defconstant flexbe_msgs::BEStatus::*FAILED* 2)
(intern "*LOCKED*" (find-package "FLEXBE_MSGS::BESTATUS"))
(shadow '*LOCKED* (find-package "FLEXBE_MSGS::BESTATUS"))
(defconstant flexbe_msgs::BEStatus::*LOCKED* 4)
(intern "*WAITING*" (find-package "FLEXBE_MSGS::BESTATUS"))
(shadow '*WAITING* (find-package "FLEXBE_MSGS::BESTATUS"))
(defconstant flexbe_msgs::BEStatus::*WAITING* 5)
(intern "*SWITCHING*" (find-package "FLEXBE_MSGS::BESTATUS"))
(shadow '*SWITCHING* (find-package "FLEXBE_MSGS::BESTATUS"))
(defconstant flexbe_msgs::BEStatus::*SWITCHING* 6)
(intern "*WARNING*" (find-package "FLEXBE_MSGS::BESTATUS"))
(shadow '*WARNING* (find-package "FLEXBE_MSGS::BESTATUS"))
(defconstant flexbe_msgs::BEStatus::*WARNING* 10)
(intern "*ERROR*" (find-package "FLEXBE_MSGS::BESTATUS"))
(shadow '*ERROR* (find-package "FLEXBE_MSGS::BESTATUS"))
(defconstant flexbe_msgs::BEStatus::*ERROR* 11)
(intern "*READY*" (find-package "FLEXBE_MSGS::BESTATUS"))
(shadow '*READY* (find-package "FLEXBE_MSGS::BESTATUS"))
(defconstant flexbe_msgs::BEStatus::*READY* 20)
(defclass flexbe_msgs::BEStatus
  :super ros::object
  :slots (_stamp _behavior_id _code _args ))

(defmethod flexbe_msgs::BEStatus
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:behavior_id __behavior_id) 0)
    ((:code __code) 0)
    ((:args __args) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _behavior_id (round __behavior_id))
   (setq _code (round __code))
   (setq _args __args)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:behavior_id
   (&optional __behavior_id)
   (if __behavior_id (setq _behavior_id __behavior_id)) _behavior_id)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:args
   (&optional __args)
   (if __args (setq _args __args)) _args)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; int32 _behavior_id
    4
    ;; uint8 _code
    1
    ;; string[] _args
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _args)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int32 _behavior_id
       (write-long _behavior_id s)
     ;; uint8 _code
       (write-byte _code s)
     ;; string[] _args
     (write-long (length _args) s)
     (dolist (elem _args)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _behavior_id
     (setq _behavior_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _code
     (setq _code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string[] _args
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _args (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _args i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get flexbe_msgs::BEStatus :md5sum-) "467355de4ad406f864268f41621cb885")
(setf (get flexbe_msgs::BEStatus :datatype-) "flexbe_msgs/BEStatus")
(setf (get flexbe_msgs::BEStatus :definition-)
      "# Behavior Status
uint8 STARTED = 0
uint8 FINISHED = 1
uint8 FAILED = 2

uint8 LOCKED = 4
uint8 WAITING = 5
uint8 SWITCHING = 6

# General problems
uint8 WARNING = 10
uint8 ERROR = 11

# Engine Status
uint8 READY = 20

time stamp
int32 behavior_id
uint8 code

string[] args

")



(provide :flexbe_msgs/BEStatus "467355de4ad406f864268f41621cb885")


