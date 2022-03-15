/// @description Insert description here
// You can write your code in this editor

enemies = []
// arrays that contain the IDs of battle entities in each team
allies = []

curSide = false // it true is allies else enemies

curTurn = 0

environment = ""
// may cause an effect to all entities but also might just be a background image

turnCount = 0

canRun = true
// if player can run from this battle
// certain battles can't run from

init = true
// init for first step

global.timeStop = false
// for time stop action
// not sure how it will be implemented

// notification variables
notificationLines = ["Battle Start"]

