
"use strict";

let SubmitTray = require('./SubmitTray.js')
let GetMaterialLocations = require('./GetMaterialLocations.js')
let ConveyorBeltControl = require('./ConveyorBeltControl.js')
let PopulationControl = require('./PopulationControl.js')
let VacuumGripperControl = require('./VacuumGripperControl.js')
let AGVControl = require('./AGVControl.js')

module.exports = {
  SubmitTray: SubmitTray,
  GetMaterialLocations: GetMaterialLocations,
  ConveyorBeltControl: ConveyorBeltControl,
  PopulationControl: PopulationControl,
  VacuumGripperControl: VacuumGripperControl,
  AGVControl: AGVControl,
};
