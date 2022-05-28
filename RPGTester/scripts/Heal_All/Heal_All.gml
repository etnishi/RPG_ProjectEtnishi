// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information 
function Heal_All(targ, side){
	var ins = instance_create_layer(x, y, "Attack_Layer", Support_obj)
	ins.target = BattleController_obj.entities[side][targ]
	ins.base = MAG + 50
	ins.scr = Do_Heal
	ins.spr = Magic_spr
	var tnam = " themselves"
	if(targ != self)
		tnam = BattleController_obj.entities[side][targ].insName
	array_push(BattleController_obj.notificationLines, string( insName + " Heals ") + tnam)
	doTurn = false
}

function Heal_All_I(){
	return ["Heal", "TEST HEAL", Heal_All, 1, 0.3, 1, 0, false, 2, 0]
//		Name,	Description,	Script,	TargetSide,	MP Cost,	base,	Hitbase,	alltarg, cooldown
}

