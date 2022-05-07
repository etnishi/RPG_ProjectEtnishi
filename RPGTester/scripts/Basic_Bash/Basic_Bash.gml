// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Basic_Bash(targ, side){
	var ins = instance_create_layer(x, y, "Attack_Layer",  Attack_obj)
	array_push(BattleController_obj.notificationLines, string( insName + " does a Basic Bash"))
	ins.target = BattleController_obj.entities[side][targ]
	ins.base += ATK
	ins.hitChance += (SKL * 1.5) + (LCK / 2)
	doTurn = false
}

function Basic_Bash_I(){
	return ["Bash", "Description", Basic_Bash, 0, 0]
}


