// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function All_Bash(){
	var ins = instance_create_layer(x, y, "Attack_Layer",  Attack_obj)
	
	ins.target = BattleController_obj.entities[side][targ]
	ins.base += ATK
	doTurn = false
	ins.hitChance += (SKL * 1.5) + (LCK / 2)
}

function All_Bash_I(){
	return ["Bash", "Description", All_Bash, 0, 0]
}


