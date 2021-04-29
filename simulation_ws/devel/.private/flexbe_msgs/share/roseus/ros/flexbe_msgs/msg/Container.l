;; Auto-generated. Do not edit!


(when (boundp 'flexbe_msgs::Container)
  (if (not (find-package "FLEXBE_MSGS"))
    (make-package "FLEXBE_MSGS"))
  (shadow 'Container (find-package "FLEXBE_MSGS")))
(unless (find-package "FLEXBE_MSGS::CONTAINER")
  (make-package "FLEXBE_MSGS::CONTAINER"))

(in-package "ROS")
;;//! \htmlinclude Container.msg.html


(defclass flexbe_msgs::Container
  :super ros::object
  :slots (_path _children _outcomes _transitions _autonomy ))

(defmethod flexbe_msgs::Container
  (:init
   (&key
    ((:path __path) "")
    ((:children __children) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:outcomes __outcomes) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:transitions __transitions) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:autonomy __autonomy) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _path (string __path))
   (setq _children __children)
   (setq _outcomes __outcomes)
   (setq _transitions __transitions)
   (setq _autonomy __autonomy)
   self)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:children
   (&optional __children)
   (if __children (setq _children __children)) _children)
  (:outcomes
   (&optional __outcomes)
   (if __outcomes (setq _outcomes __outcomes)) _outcomes)
  (:transitions
   (&optional __transitions)
   (if __transitions (setq _transitions __transitions)) _transitions)
  (:autonomy
   (&optional __autonomy)
   (if __autonomy (setq _autonomy __autonomy)) _autonomy)
  (:serialization-length
   ()
   (+
    ;; string _path
    4 (length _path)
    ;; string[] _children
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _children)) 4
    ;; string[] _outcomes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _outcomes)) 4
    ;; string[] _transitions
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _transitions)) 4
    ;; byte[] _autonomy
    (* 1    (length _autonomy)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;; string[] _children
     (write-long (length _children) s)
     (dolist (elem _children)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _outcomes
     (write-long (length _outcomes) s)
     (dolist (elem _outcomes)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _transitions
     (write-long (length _transitions) s)
     (dolist (elem _transitions)
       (write-long (length elem) s) (princ elem s)
       )
     ;; byte[] _autonomy
     (write-long (length _autonomy) s)
     (dotimes (i (length _autonomy))
       (write-byte (elt _autonomy i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _children
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _children (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _children i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _outcomes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _outcomes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _outcomes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _transitions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transitions (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _transitions i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; byte[] _autonomy
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _autonomy (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _autonomy i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _autonomy i) 127) (setf (elt _autonomy i) (- (elt _autonomy i) 256)))
     ))
   ;;
   self)
  )

(setf (get flexbe_msgs::Container :md5sum-) "627eacc0f462c8ee83d7105e17cf4119")
(setf (get flexbe_msgs::Container :datatype-) "flexbe_msgs/Container")
(setf (get flexbe_msgs::Container :definition-)
      "string path
string[] children
string[] outcomes
string[] transitions
byte[] autonomy
")



(provide :flexbe_msgs/Container "627eacc0f462c8ee83d7105e17cf4119")


