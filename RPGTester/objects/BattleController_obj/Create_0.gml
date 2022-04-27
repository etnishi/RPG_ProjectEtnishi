/// @description Insert description here
// You can write your code in this editor

frameCount = 60

enemies = []
// arrays that contain the IDs of battle entities in each team
allies = []

lootTable = []
// array of possible loot drops
// loot entry: [rate out of 100 (2 lowest, 99 highest), item]
// rolling a 1 guarantees you all possible item drops
reward = [1]
// rewarded post battle
// index 0 is exp amount 

curSide = false // it true is allies else enemies

done = false	// whether the battle is over
winner = -1		// 0 is enemy 1 is ally

curTurn = 0

environment = ""
// may cause an effect to all entities but also might just be a background image

turnCount = 0

canRun = true
// if player can run from this battle
// certain battles can't run from

init = true
// init for first step

start = false
// wait for player to start fight

global.timeStop = false
// for time stop action
// not sure how it will be implemented

// notification variables
notificationLines = []


if(!instance_exists(Notification_obj)){
	var ins = instance_create_layer(0, 0, "Attack_Layer", Notification_obj)
	ins.doPause = false
}

