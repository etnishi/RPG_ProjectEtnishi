// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Multi_Bash(targ, side){
	var amt = 5
	var ins = instance_create_layer(x, y, "Attack_Layer",  AttackSpawner_obj)
	ins.target = BattleController_obj.entities[side][targ]
	ins.base = 20 + (ATK / amt)
	ins.hits = amt
	ins.hitChance = 60 + SKL
	
	
	doTurn = false
}

function Multi_Bash_I(){
	return ["Bash", "Description", Multi_Bash, 0, 0.3, 20, 60, false]
//		Name,	Description,	Script,	TargetSide,	MP Cost,	base,	Hitbase,	alltarg
}


