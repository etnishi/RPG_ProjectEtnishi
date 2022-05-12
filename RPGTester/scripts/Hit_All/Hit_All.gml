// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Hit_All(targ, side){
	array_push(BattleController_obj.notificationLines, string( insName + " hits all"))
	for(var i = 0; i < array_length(BattleController_obj.entities[side]); i ++){
		if(BattleController_obj.entities[side][i].Status[3] == 0){
			var ins = instance_create_layer(x, y, "Attack_Layer",  Attack_obj)
			ins.target = BattleController_obj.entities[side][i]
			ins.base = 10 + ATK
			ins.hitChance = 50 + (SKL * 1.5) + (LCK / 2)
		}
	}
	doTurn = false
	
}

function Hit_All_I(){
	return ["Bash All", "Description", Hit_All, 0, 0, 10, 50, true]
}


