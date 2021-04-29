#!/usr/bin/env python
# -*- coding: utf-8 -*-
###########################################################
#               WARNING: Generated code!                  #
#              **************************                 #
# Manual changes may get lost if file is generated again. #
# Only code inside the [MANUAL] tags will be kept.        #
###########################################################

from flexbe_core import Behavior, Autonomy, OperatableStateMachine, ConcurrencyContainer, PriorityContainer, Logger
from my_factory_states.srdf_state_to_moveit import SrdfStateToMoveit
from my_factory_states.vacuum_gripper_control_state import VacuumGripperControlState
# Additional imports can be added inside the following tags
# [MANUAL_IMPORT]

# [/MANUAL_IMPORT]


'''
Created on Tue Mar 16 2021
@author: xinyinhoe
'''
class place_demo2SM(Behavior):
	'''
	R2 Places box into bin2
	'''


	def __init__(self):
		super(place_demo2SM, self).__init__()
		self.name = 'place_demo2'

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
		_state_machine.userdata.names2 = names2
		_state_machine.userdata.temp = []

		# Additional creation code can be added inside the following tags
		# [MANUAL_CREATE]
		
		# [/MANUAL_CREATE]


		with _state_machine:
			# x:131 y:53
			OperatableStateMachine.add('MoveR2ToPreUnload',
										SrdfStateToMoveit(config_name='R2PreUnload', move_group=pick2_group, action_topic='/move_group', robot_name=''),
										transitions={'reached': 'MoveR2ToPrePlace', 'planning_failed': 'failed', 'control_failed': 'failed', 'param_error': 'failed'},
										autonomy={'reached': Autonomy.Off, 'planning_failed': Autonomy.Off, 'control_failed': Autonomy.Off, 'param_error': Autonomy.Off},
										remapping={'config_name': 'temp', 'move_group': 'temp', 'robot_name': 'temp', 'action_topic': 'temp', 'joint_values': 'temp', 'joint_names': 'temp'})

			# x:357 y:87
			OperatableStateMachine.add('MoveR2ToPrePlace',
										SrdfStateToMoveit(config_name='R2PrePlace', move_group=pick2_group, action_topic='/move_group', robot_name=''),
										transitions={'reached': 'MoveR2toPlace', 'planning_failed': 'failed', 'control_failed': 'failed', 'param_error': 'failed'},
										autonomy={'reached': Autonomy.Off, 'planning_failed': Autonomy.Off, 'control_failed': Autonomy.Off, 'param_error': Autonomy.Off},
										remapping={'config_name': 'temp', 'move_group': 'temp', 'robot_name': 'temp', 'action_topic': 'temp', 'joint_values': 'temp', 'joint_names': 'temp'})

			# x:525 y:100
			OperatableStateMachine.add('MoveR2toPlace',
										SrdfStateToMoveit(config_name='R2Place', move_group=pick2_group, action_topic='/move_group', robot_name=''),
										transitions={'reached': 'DeactiveGripper2', 'planning_failed': 'failed', 'control_failed': 'failed', 'param_error': 'failed'},
										autonomy={'reached': Autonomy.Off, 'planning_failed': Autonomy.Off, 'control_failed': Autonomy.Off, 'param_error': Autonomy.Off},
										remapping={'config_name': 'temp', 'move_group': 'temp', 'robot_name': 'temp', 'action_topic': 'temp', 'joint_values': 'temp', 'joint_names': 'temp'})

			# x:742 y:169
			OperatableStateMachine.add('DeactiveGripper2',
										VacuumGripperControlState(enable=False, service_name='/gripper2/control'),
										transitions={'continue': 'finished', 'failed': 'failed'},
										autonomy={'continue': Autonomy.Off, 'failed': Autonomy.Off})


		return _state_machine


	# Private functions can be added inside the following tags
	# [MANUAL_FUNC]
	
	# [/MANUAL_FUNC]
