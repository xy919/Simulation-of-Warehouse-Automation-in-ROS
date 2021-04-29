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
class pick_demoSM(Behavior):
	'''
	R1 picks box from bin1
	'''


	def __init__(self):
		super(pick_demoSM, self).__init__()
		self.name = 'pick_demo'

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
		# x:892 y:449, x:130 y:463
		_state_machine = OperatableStateMachine(outcomes=['finished', 'failed'])
		_state_machine.userdata.part_pose = []
		_state_machine.userdata.pick1_configuration = []
		_state_machine.userdata.home1 = home1
		_state_machine.userdata.temp = []

		# Additional creation code can be added inside the following tags
		# [MANUAL_CREATE]
		
		# [/MANUAL_CREATE]


		with _state_machine:
			# x:62 y:43
			OperatableStateMachine.add('DetactPart1',
										DetectPartCameraState(ref_frame='robot1_base', camera_topic='/hrwros/logical_camera_1', camera_frame='logical_camera_1_frame'),
										transitions={'continue': 'MoveR1ToPrePick', 'failed': 'failed'},
										autonomy={'continue': Autonomy.Off, 'failed': Autonomy.Off},
										remapping={'pose': 'part_pose'})

			# x:448 y:38
			OperatableStateMachine.add('ComputePick1',
										ComputeGraspState(group=pick1_group, offset=0.0, joint_names=names1, tool_link=gripper1, rotation=3.1415),
										transitions={'continue': 'MoveR1ToPick', 'failed': 'failed'},
										autonomy={'continue': Autonomy.Off, 'failed': Autonomy.Off},
										remapping={'pose': 'part_pose', 'joint_values': 'pick1_configuration', 'joint_names': 'joint_names'})

			# x:633 y:72
			OperatableStateMachine.add('MoveR1ToPick',
										MoveitToJointsDynState(move_group=pick1_group, offset=0.0, tool_link=gripper1, action_topic='/move_group'),
										transitions={'reached': 'ActiveGripper1', 'planning_failed': 'failed', 'control_failed': 'failed'},
										autonomy={'reached': Autonomy.Off, 'planning_failed': Autonomy.Off, 'control_failed': Autonomy.Off},
										remapping={'joint_values': 'pick1_configuration', 'joint_names': 'joint_names'})

			# x:285 y:61
			OperatableStateMachine.add('MoveR1ToPrePick',
										SrdfStateToMoveit(config_name='R1PrePick', move_group=pick1_group, action_topic='/move_group', robot_name=''),
										transitions={'reached': 'ComputePick1', 'planning_failed': 'failed', 'control_failed': 'failed', 'param_error': 'failed'},
										autonomy={'reached': Autonomy.Off, 'planning_failed': Autonomy.Off, 'control_failed': Autonomy.Off, 'param_error': Autonomy.Off},
										remapping={'config_name': 'temp', 'move_group': 'temp', 'robot_name': 'temp', 'action_topic': 'temp', 'joint_values': 'temp', 'joint_names': 'temp'})

			# x:851 y:138
			OperatableStateMachine.add('ActiveGripper1',
										VacuumGripperControlState(enable=True, service_name='/gripper1/control'),
										transitions={'continue': 'finished', 'failed': 'failed'},
										autonomy={'continue': Autonomy.Off, 'failed': Autonomy.Off})


		return _state_machine


	# Private functions can be added inside the following tags
	# [MANUAL_FUNC]
	
	# [/MANUAL_FUNC]
