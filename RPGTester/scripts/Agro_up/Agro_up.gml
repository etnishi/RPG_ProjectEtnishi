// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Agro_up(targ, side){
//	scr(target, base, etype)		(target, statInd, bonus)
	var ins = instance_create_layer(x, y, "Attack_Layer", Support_obj)
	ins.target = BattleController_obj.entities[side][targ]
	ins.etype = 0.5
	ins.base = 1
	ins.scr = Do_Agro
	ins.spr = HexShield_spr
	doTurn = false
}

function Agro_up_I(){
	return ["Agro up", "Description", Do_Agro, 2, SingleTargetSupport, 0.2, 30, 0.5, 1000, 0, Ring_Expand_spr, false]
//		Name,	Description,	Script,	TargetSide,	MP Cost,	base,	Hitbase,	alltarg
//	arr	format
//	Name,	Description,	Script,	TargetSide,	TargType	MP Cost,	base,	etype	HitRate,	cooldown,	sprite
}
