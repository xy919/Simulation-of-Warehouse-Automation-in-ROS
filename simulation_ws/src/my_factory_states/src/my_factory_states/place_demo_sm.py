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
class place_demoSM(Behavior):
	'''
	R1 places box on Turtlebot
	'''


	def __init__(self):
		super(place_demoSM, self).__init__()
		self.name = 'place_demo'

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
		home1 = [-1.9266, -0.4339, 1.753, -2.86, -1.57 ,0]
		home2 = [-1.8919, -0.2256, 1.753, -2.86, -1.57 ,0]
		# x:892 y:449, x:130 y:463
		_state_machine = OperatableStateMachine(outcomes=['finished', 'failed'])
		_state_machine.userdata.part_pose = []
		_state_machine.userdata.pick1_configuration = []
		_state_machine.userdata.home1 = home1
		_state_machine.userdata.names1 = names1
		_state_machine.userdata.home2 = home2
		_state_machine.userdata.temp = []

		# Additional creation code can be added inside the following tags
		# [MANUAL_CREATE]
		
		# [/MANUAL_CREATE]


		with _state_machine:
			# x:141 y:41
			OperatableStateMachine.add('MoveR1toPreplace',
										SrdfStateToMoveit(config_name='R1PreUnload', move_group=pick1_group, action_topic='/move_group', robot_name=''),
										transitions={'reached': 'MoveR1toPrePlace', 'planning_failed': 'failed', 'control_failed': 'failed', 'param_error': 'failed'},
										autonomy={'reached': Autonomy.Off, 'planning_failed': Autonomy.Off, 'control_failed': Autonomy.Off, 'param_error': Autonomy.Off},
										remapping={'config_name': 'temp', 'move_group': 'temp', 'robot_name': 'temp', 'action_topic': 'temp', 'joint_values': 'temp', 'joint_names': 'temp'})

			# x:533 y:53
			OperatableStateMachine.add('MoveR1toDetach',
										SrdfStateToMoveit(config_name='R1Place', move_group=pick1_group, action_topic='/move_group', robot_name=''),
										transitions={'reached': 'DeactiveGripper1', 'planning_failed': 'failed', 'control_failed': 'failed', 'param_error': 'failed'},
										autonomy={'reached': Autonomy.Off, 'planning_failed': Autonomy.Off, 'control_failed': Autonomy.Off, 'param_error': Autonomy.Off},
										remapping={'config_name': 'temp', 'move_group': 'temp', 'robot_name': 'temp', 'action_topic': 'temp', 'joint_values': 'temp', 'joint_names': 'temp'})

			# x:326 y:57
			OperatableStateMachine.add('MoveR1toPrePlace',
										SrdfStateToMoveit(config_name='R1PrePlace', move_group=pick1_group, action_topic='/move_group', robot_name=''),
										transitions={'reached': 'MoveR1toDetach', 'planning_failed': 'failed', 'control_failed': 'failed', 'param_error': 'failed'},
										autonomy={'reached': Autonomy.Off, 'planning_failed': Autonomy.Off, 'control_failed': Autonomy.Off, 'param_error': Autonomy.Off},
										remapping={'config_name': 'temp', 'move_group': 'temp', 'robot_name': 'temp', 'action_topic': 'temp', 'joint_values': 'temp', 'joint_names': 'temp'})

			# x:689 y:93
			OperatableStateMachine.add('DeactiveGripper1',
										VacuumGripperControlState(enable=False, service_name='/gripper1/control'),
										transitions={'continue': 'finished', 'failed': 'failed'},
										autonomy={'continue': Autonomy.Off, 'failed': Autonomy.Off})


		return _state_machine


	# Private functions can be added inside the following tags
	# [MANUAL_FUNC]
	
	# [/MANUAL_FUNC]
