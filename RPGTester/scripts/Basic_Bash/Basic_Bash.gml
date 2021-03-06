// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Basic_Bash(targ, side){
	var ins = instance_create_layer(x, y, "Attack_Layer",  Attack_obj)
	array_push(BattleController_obj.notificationLines, string( insName + " does a Basic Bash"))
	ins.target = BattleController_obj.entities[side][targ]
	ins.base = 30 + ATK
	ins.hitChance = 60 + (SKL * 1.5) + (LCK / 2)
	ins.spr = Hit_spr
	ins.onTarg = true
	doTurn = false
}

// old format
//		Name,	Description,	Script,	TargetSide,	MP Cost,	base,	Hitbase,	alltarg
function Basic_Bash_I(){
	return ["Bash", "Description", Do_Damage, 0, SingleTargetAttack, 0, 30, [1,0,0,0,0,0], 60, 0, Hit_spr, true]
//	arr	format
//	Name,	Description,	Script,	TargetSide,	TargType	MP Cost,	base,	etype	HitRate,	cooldown,	sprite
}


