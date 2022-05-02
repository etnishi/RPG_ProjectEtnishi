// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information 
function Heal_Low(targ, side){
	var ins = instance_create_layer(x, y, "Attack_Layer", Support_obj)
	ins.target = BattleController_obj.entities[side][targ]
	ins.base += MAG
	doTurn = false
}

function Heal_Low_I(){
	return ["Heal", "TEST HEAL", Heal_Low, 1]
}

