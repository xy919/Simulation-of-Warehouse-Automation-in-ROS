#!/usr/bin/env python
# -*- coding: utf-8 -*-
###########################################################
#               WARNING: Generated code!                  #
#              **************************                 #
# Manual changes may get lost if file is generated again. #
# Only code inside the [MANUAL] tags will be kept.        #
###########################################################

from flexbe_core import Behavior, Autonomy, OperatableStateMachine, ConcurrencyContainer, PriorityContainer, Logger
from my_factory_states.compute_grasp_state import ComputeGraspState
from my_factory_states.detect_part_camera_state import DetectPartCameraState
from my_factory_states.moveit_to_joints_dyn_state import MoveitToJointsDynState
from my_factory_states.srdf_state_to_moveit import SrdfStateToMoveit
from my_factory_states.vacuum_gripper_control_state import VacuumGripperControlState
# Additional imports can be added inside the following tags
# [MANUAL_IMPORT]

# [/MANUAL_IMPORT]


'''
Created on Tue Mar 16 2021
@author: xinyinhoe
'''
class pick_demo2SM(Behavior):
	'''
	R2 pick box from Turtlebot

	'''


	def __init__(self):
		super(pick_demo2SM, self).__init__()
		self.name = 'pick_demo2'

		# parameters of this behavior

		# references to used behaviors

		# Additional initialization code can be added inside the following tags
		# [MANUAL_INIT]
		
		# [/MANUAL_INIT]

		# Behavior comments:



	def create(self):
		names1 = ['robot1_shoulder_pan_joint', 'robot1_shoulder_lift_joint', 'robot1_elbow_joint', 'robot1_wrist_1_joint', 'robot1_wrist_2_joint', 'robot1_wrist_3_joint']
		pick1_group = 'robot1'
		gripper1 = "vacuum_gripper1_suction_cup"
		home1 = [-1.9266, -0.4339,-1.753, 2.86, -1.57 ,0]
		names2 = ['robot2_shoulder_pan_joint', 'robot2_shoulder_lift_joint', 'robot2_elbow_joint', 'robot2_wrist_1_joint', 'robot2_wrist_2_joint', 'robot2_wrist_3_joint']
		pick2_group = 'robot2'
		gripper2 = "vacuum_gripper2_suction_cup"
		r2place = [1.753, -0.4339, -1.9266, -2.8638, -1.57, 0]
		# x:892 y:449, x:130 y:463
		_state_machine = OperatableStateMachine(outcomes=['finished', 'failed'])
		_state_machine.userdata.part_pose = []
		_state_machine.userdata.pick1_configuration = []
		_state_machine.userdata.home1 = home1
		_state_machine.userdata.pick2_configuration = []
		_state_machine.userdata.r2place = r2place
		_state_machine.userdata.temp = []

		# Additional creation code can be added inside the following tags
		# [MANUAL_CREATE]
		
		# [/MANUAL_CREATE]


		with _state_machine:
			# x:79 y:55
			OperatableStateMachine.add('DetactPart2',
										DetectPartCameraState(ref_frame='robot2_base', camera_topic='/hrwros/logical_camera_2', camera_frame='logical_camera_2_frame'),
										transitions={'continue': 'MoveR2toPrePick', 'failed': 'failed'},
										autonomy={'continue': Autonomy.Off, 'failed': Autonomy.Off},
										remapping={'pose': 'part_pose2'})

			# x:399 y:44
			OperatableStateMachine.add('ComputePick2',
										ComputeGraspState(group=pick2_group, offset=0.0, joint_names=names2, tool_link=gripper2, rotation=3.1415),
										transitions={'continue': 'MoveR2ToPick', 'failed': 'failed'},
										autonomy={'continue': Autonomy.Off, 'failed': Autonomy.Off},
										remapping={'pose': 'part_pose2', 'joint_values': 'pick2_configuration', 'joint_names': 'joint_names'})

			# x:632 y:76
			OperatableStateMachine.add('MoveR2ToPick',
										MoveitToJointsDynState(move_group=pick2_group, offset=0.0, tool_link=gripper2, action_topic='/move_group'),
										transitions={'reached': 'ActiveGripper2', 'planning_failed': 'failed', 'control_failed': 'failed'},
										autonomy={'reached': Autonomy.Off, 'planning_failed': Autonomy.Off, 'control_failed': Autonomy.Off},
										remapping={'joint_values': 'pick2_configuration', 'joint_names': 'joint_names'})

			# x:237 y:30
			OperatableStateMachine.add('MoveR2toPrePick',
										SrdfStateToMoveit(config_name='R2PrePick', move_group=pick2_group, action_topic='/move_group', robot_name=''),
										transitions={'reached': 'ComputePick2', 'planning_failed': 'failed', 'control_failed': 'failed', 'param_error': 'failed'},
										autonomy={'reached': Autonomy.Off, 'planning_failed': Autonomy.Off, 'control_failed': Autonomy.Off, 'param_error': Autonomy.Off},
										remapping={'config_name': 'temp', 'move_group': 'temp', 'robot_name': 'temp', 'action_topic': 'temp', 'joint_values': 'temp', 'joint_names': 'temp'})

			# x:820 y:149
			OperatableStateMachine.add('ActiveGripper2',
										VacuumGripperControlState(enable=True, service_name='/gripper2/control'),
										transitions={'continue': 'finished', 'failed': 'failed'},
										autonomy={'continue': Autonomy.Off, 'failed': Autonomy.Off})


		return _state_machine


	# Private functions can be added inside the following tags
	# [MANUAL_FUNC]
	
	# [/MANUAL_FUNC]
