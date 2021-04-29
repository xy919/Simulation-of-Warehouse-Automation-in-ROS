
"use strict";

let CliffEvent = require('./CliffEvent.js');
let Led = require('./Led.js');
let DockInfraRed = require('./DockInfraRed.js');
let PowerSystemEvent = require('./PowerSystemEvent.js');
let Sound = require('./Sound.js');
let DigitalOutput = require('./DigitalOutput.js');
let ControllerInfo = require('./ControllerInfo.js');
let ButtonEvent = require('./ButtonEvent.js');
let ScanAngle = require('./ScanAngle.js');
let DigitalInputEvent = require('./DigitalInputEvent.js');
let ExternalPower = require('./ExternalPower.js');
let MotorPower = require('./MotorPower.js');
let BumperEvent = require('./BumperEvent.js');
let KeyboardInput = require('./KeyboardInput.js');
let SensorState = require('./SensorState.js');
let VersionInfo = require('./VersionInfo.js');
let RobotStateEvent = require('./RobotStateEvent.js');
let WheelDropEvent = require('./WheelDropEvent.js');
let AutoDockingFeedback = require('./AutoDockingFeedback.js');
let AutoDockingGoal = require('./AutoDockingGoal.js');
let AutoDockingResult = require('./AutoDockingResult.js');
let AutoDockingAction = require('./AutoDockingAction.js');
let AutoDockingActionFeedback = require('./AutoDockingActionFeedback.js');
let AutoDockingActionResult = require('./AutoDockingActionResult.js');
let AutoDockingActionGoal = require('./AutoDockingActionGoal.js');

module.exports = {
  CliffEvent: CliffEvent,
  Led: Led,
  DockInfraRed: DockInfraRed,
  PowerSystemEvent: PowerSystemEvent,
  Sound: Sound,
  DigitalOutput: DigitalOutput,
  ControllerInfo: ControllerInfo,
  ButtonEvent: ButtonEvent,
  ScanAngle: ScanAngle,
  DigitalInputEvent: DigitalInputEvent,
  ExternalPower: ExternalPower,
  MotorPower: MotorPower,
  BumperEvent: BumperEvent,
  KeyboardInput: KeyboardInput,
  SensorState: SensorState,
  VersionInfo: VersionInfo,
  RobotStateEvent: RobotStateEvent,
  WheelDropEvent: WheelDropEvent,
  AutoDockingFeedback: AutoDockingFeedback,
  AutoDockingGoal: AutoDockingGoal,
  AutoDockingResult: AutoDockingResult,
  AutoDockingAction: AutoDockingAction,
  AutoDockingActionFeedback: AutoDockingActionFeedback,
  AutoDockingActionResult: AutoDockingActionResult,
  AutoDockingActionGoal: AutoDockingActionGoal,
};
