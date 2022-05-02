// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Multi_Bash(targ, side){
	var amt = 5
	var ins = instance_create_layer(x, y, "Attack_Layer",  AttackSpawner_obj)
	ins.target = BattleController_obj.entities[side][targ]
	ins.base += (ATK / amt)
	ins.hits = amt
	
	
	doTurn = false
}

function Multi_Bash_I(){
	return ["Bash", "Description", Multi_Bash, 0]
}


