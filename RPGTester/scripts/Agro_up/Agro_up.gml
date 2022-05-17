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
	return ["Agro up", "Description", Agro_up, 2, 0.2, 1, 0, false]
//		Name,	Description,	Script,	TargetSide,	MP Cost,	base,	Hitbase,	alltarg
}
