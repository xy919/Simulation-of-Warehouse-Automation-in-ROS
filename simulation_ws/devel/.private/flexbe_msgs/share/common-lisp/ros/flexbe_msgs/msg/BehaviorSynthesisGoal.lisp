; Auto-generated. Do not edit!


(cl:in-package flexbe_msgs-msg)


;//! \htmlinclude BehaviorSynthesisGoal.msg.html

(cl:defclass <BehaviorSynthesisGoal> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type flexbe_msgs-msg:SynthesisRequest
    :initform (cl:make-instance 'flexbe_msgs-msg:SynthesisRequest)))
)

(cl:defclass BehaviorSynthesisGoal (<BehaviorSynthesisGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BehaviorSynthesisGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BehaviorSynthesisGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flexbe_msgs-msg:<BehaviorSynthesisGoal> is deprecated: use flexbe_msgs-msg:BehaviorSynthesisGoal instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <BehaviorSynthesisGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flexbe_msgs-msg:request-val is deprecated.  Use flexbe_msgs-msg:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BehaviorSynthesisGoal>) ostream)
  "Serializes a message object of type '<BehaviorSynthesisGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BehaviorSynthesisGoal>) istream)
  "Deserializes a message object of type '<BehaviorSynthesisGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BehaviorSynthesisGoal>)))
  "Returns string type for a message object of type '<BehaviorSynthesisGoal>"
  "flexbe_msgs/BehaviorSynthesisGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BehaviorSynthesisGoal)))
  "Returns string type for a message object of type 'BehaviorSynthesisGoal"
  "flexbe_msgs/BehaviorSynthesisGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BehaviorSynthesisGoal>)))
  "Returns md5sum for a message object of type '<BehaviorSynthesisGoal>"
  "64ccf8fdad6091a950ca099bc67e6595")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BehaviorSynthesisGoal)))
  "Returns md5sum for a message object of type 'BehaviorSynthesisGoal"
  "64ccf8fdad6091a950ca099bc67e6595")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BehaviorSynthesisGoal>)))
  "Returns full string definition for message of type '<BehaviorSynthesisGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Minimal template for a behavior synthesis action.~%# As long as your action type supports at least the fields listed below, you can also use a custom one.~%~%# Request message as set in the FlexBE UI~%SynthesisRequest request~%~%~%================================================================================~%MSG: flexbe_msgs/SynthesisRequest~%# Minimal template for the request data provided by the FlexBE synthesis interface.~%# Either refer this message as 'request' in the goal part of your synthesis action~%# or implement your own by at least supporting the fields listed below.~%~%# Identifier of this synthesis query, can for example be used to set the name of the resulting state machine~%string name~%~%# Identifier of the system (i.e., configuration data set) to be used by the synthesis tool~%string system~%~%# Goal to be achieved by the synthesized behavior~%string goal~%~%# Initial conditions from which the synthesized behavior will start~%string initial_condition~%~%# Available outcomes of the generated state machine,~%# i.e., possible results of the synthesized behavior~%string[] sm_outcomes~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BehaviorSynthesisGoal)))
  "Returns full string definition for message of type 'BehaviorSynthesisGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Minimal template for a behavior synthesis action.~%# As long as your action type supports at least the fields listed below, you can also use a custom one.~%~%# Request message as set in the FlexBE UI~%SynthesisRequest request~%~%~%================================================================================~%MSG: flexbe_msgs/SynthesisRequest~%# Minimal template for the request data provided by the FlexBE synthesis interface.~%# Either refer this message as 'request' in the goal part of your synthesis action~%# or implement your own by at least supporting the fields listed below.~%~%# Identifier of this synthesis query, can for example be used to set the name of the resulting state machine~%string name~%~%# Identifier of the system (i.e., configuration data set) to be used by the synthesis tool~%string system~%~%# Goal to be achieved by the synthesized behavior~%string goal~%~%# Initial conditions from which the synthesized behavior will start~%string initial_condition~%~%# Available outcomes of the generated state machine,~%# i.e., possible results of the synthesized behavior~%string[] sm_outcomes~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BehaviorSynthesisGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BehaviorSynthesisGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'BehaviorSynthesisGoal
    (cl:cons ':request (request msg))
))
