// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Charge_Bash(targ, side){
	var ins = instance_create_layer(x, y, "Attack_Layer",  Delayed_Action)
	ins.target = BattleController_obj.entities[side][targ]
	ins.base = 40 + ATK
	ins.chargeAct = CB_
	ins.hitChance = 60 + (SKL * 1.5) + (LCK / 2)
	ins.spr = GreenBlob_spr
	
	array_push(BattleController_obj.notificationLines, string( insName + " starts charging"))
	doTurn = false
}

function Charge_Bash_I(){
	return ["Charge Bash", "Description", Charge_Bash, 0, 0, 40, 60, false]
//		Name,	Description,	Script,	TargetSide,	MP Cost,	base,	Hitbase,	alltarg
}

function CB_(){
	var ins = instance_create_layer(x, y, "Attack_Layer",  Attack_obj)
	
	ins.target = target
	ins.base = base
	ins.hitChance = hitChance
}
