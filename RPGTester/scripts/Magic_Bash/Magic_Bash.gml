// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Magic_Bash(targ, side){
	var ins = instance_create_layer(x, y, "Attack_Layer",  Attack_obj)
	array_push(BattleController_obj.notificationLines, string( insName + " does a Basic Bash"))
	ins.target = BattleController_obj.entities[side][targ]
	ins.base = 30 + MAG
	ins.hitChance = 60 + (SKL * 1.5) + (LCK / 2)
	ins.eType = [0 ,0 ,0 , 0, 1, 0]
	ins.spr = Nebula_spr
	doTurn = false
}

function Magic_Bash_I(){
	return ["Magic", "Description", Magic_Bash, 0, 0, 30, 60, false, 0, 0]
//		Name,	Description,	Script,	TargetSide,	MP Cost,	base,	Hitbase,	alltarg, cooldown
}


