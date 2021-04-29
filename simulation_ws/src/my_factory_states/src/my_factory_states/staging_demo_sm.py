#!/usr/bin/env python
# -*- coding: utf-8 -*-
###########################################################
#               WARNING: Generated code!                  #
#              **************************                 #
# Manual changes may get lost if file is generated again. #
# Only code inside the [MANUAL] tags will be kept.        #
###########################################################

from flexbe_core import Behavior, Autonomy, OperatableStateMachine, ConcurrencyContainer, PriorityContainer, Logger
from my_factory_states.control_feeder_state import ControlFeederState
from my_factory_states.move_base_state import MoveBaseState
from my_factory_states.pick_demo2_sm import pick_demo2SM
from my_factory_states.pick_demo_sm import pick_demoSM
from my_factory_states.place_demo2_sm import place_demo2SM
from my_factory_states.place_demo_sm import place_demoSM
from my_factory_states.srdf_state_to_moveit import SrdfStateToMoveit
# Additional imports can be added inside the following tags
# [MANUAL_IMPORT]
from geometry_msgs.msg import Pose2D
# [/MANUAL_IMPORT]


'''
Created on Sun Mar 28 2021
@author: XinyinHoe
'''
class Staging_demoSM(Behavior):
	'''
	Full simulation
	'''


	def __init__(self):
		super(Staging_demoSM, self).__init__()
		self.name = 'Staging_demo'

		# parameters of this behavior

		# references to used behaviors
		self.add_behavior(pick_demoSM, 'pick_demo')
		self.add_behavior(pick_demo2SM, 'pick_demo2')
		self.add_behavior(place_demoSM, 'place_demo')
		self.add_behavior(place_demo2SM, 'place_demo2')

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
		robot_loc_1 = Pose2D(x=-1.26, y=0.216, theta=3.145)
		# x:1013 y:432, x:578 y:420
		_state_machine = OperatableStateMachine(outcomes=['finished', 'failed'])
		_state_machine.userdata.part_pose = []
		_state_machine.userdata.pick1_configuration = []
		_state_machine.userdata.home1 = home1
		_state_machine.userdata.pick2_configuration = []
		_state_machine.userdata.r2place = r2place
		_state_machine.userdata.temp = []
		_state_machine.userdata.robot_loc_1 = robot_loc_1

		# Additional creation code can be added inside the following tags
		# [MANUAL_CREATE]
		
		# [/MANUAL_CREATE]


		with _state_machine:
			# x:82 y:40
			OperatableStateMachine.add('SpawnObject',
										ControlFeederState(activation=True),
										transitions={'succeeded': 'pick_demo', 'failed': 'failed'},
										autonomy={'succeeded': Autonomy.Off, 'failed': Autonomy.Off})

			# x:1248 y:52
			OperatableStateMachine.add('MoveTurtlebot',
										MoveBaseState(),
										transitions={'arrived': 'pick_demo2', 'failed': 'failed'},
										autonomy={'arrived': Autonomy.Off, 'failed': Autonomy.Off},
										remapping={'waypoint': 'robot_loc_1'})

			# x:290 y:35
			OperatableStateMachine.add('pick_demo',
										self.use_behavior(pick_demoSM, 'pick_demo'),
										transitions={'finished': 'place_demo', 'failed': 'failed'},
										autonomy={'finished': Autonomy.Inherit, 'failed': Autonomy.Inherit})

			# x:1201 y:160
			OperatableStateMachine.add('pick_demo2',
										self.use_behavior(pick_demo2SM, 'pick_demo2'),
										transitions={'finished': 'place_demo2', 'failed': 'failed'},
										autonomy={'finished': Autonomy.Inherit, 'failed': Autonomy.Inherit})

			# x:628 y:28
			OperatableStateMachine.add('place_demo',
										self.use_behavior(place_demoSM, 'place_demo'),
										transitions={'finished': 'MoveR1ToUnblockpath', 'failed': 'failed'},
										autonomy={'finished': Autonomy.Inherit, 'failed': Autonomy.Inherit})

			# x:1188 y:294
			OperatableStateMachine.add('place_demo2',
										self.use_behavior(place_demo2SM, 'place_demo2'),
										transitions={'finished': 'finished', 'failed': 'failed'},
										autonomy={'finished': Autonomy.Inherit, 'failed': Autonomy.Inherit})

			# x:942 y:32
			OperatableStateMachine.add('MoveR1ToUnblockpath',
										SrdfStateToMoveit(config_name='R1Relax', move_group=pick1_group, action_topic='/move_group', robot_name=''),
										transitions={'reached': 'MoveTurtlebot', 'planning_failed': 'failed', 'control_failed': 'failed', 'param_error': 'failed'},
										autonomy={'reached': Autonomy.Off, 'planning_failed': Autonomy.Off, 'control_failed': Autonomy.Off, 'param_error': Autonomy.Off},
										remapping={'config_name': 'temp', 'move_group': 'temp', 'robot_name': 'temp', 'action_topic': 'temp', 'joint_values': 'temp', 'joint_names': 'temp'})


		return _state_machine


	# Private functions can be added inside the following tags
	# [MANUAL_FUNC]
	
	# [/MANUAL_FUNC]
