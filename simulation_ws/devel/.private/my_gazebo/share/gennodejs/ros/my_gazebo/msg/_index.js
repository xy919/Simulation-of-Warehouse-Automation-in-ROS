
"use strict";

let VacuumGripperState = require('./VacuumGripperState.js');
let LogicalCameraImage = require('./LogicalCameraImage.js');
let Order = require('./Order.js');
let Model = require('./Model.js');
let DetectedObject = require('./DetectedObject.js');
let KitTray = require('./KitTray.js');
let ConveyorBeltState = require('./ConveyorBeltState.js');
let KitObject = require('./KitObject.js');
let PopulationState = require('./PopulationState.js');
let StorageUnit = require('./StorageUnit.js');
let TrayContents = require('./TrayContents.js');
let Kit = require('./Kit.js');
let Proximity = require('./Proximity.js');

module.exports = {
  VacuumGripperState: VacuumGripperState,
  LogicalCameraImage: LogicalCameraImage,
  Order: Order,
  Model: Model,
  DetectedObject: DetectedObject,
  KitTray: KitTray,
  ConveyorBeltState: ConveyorBeltState,
  KitObject: KitObject,
  PopulationState: PopulationState,
  StorageUnit: StorageUnit,
  TrayContents: TrayContents,
  Kit: Kit,
  Proximity: Proximity,
};
