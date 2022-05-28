// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AGI_up(targ, side){
// raises defence for one turn by 50% 
//	scr(target, base, etype)		(target, statInd, bonus)
	var ins = instance_create_layer(x, y, "Attack_Layer", Support_obj)
	ins.target = BattleController_obj.entities[side][targ]
	ins.etype = 0.5
	ins.base = 3
	ins.scr = Do_Buff
	ins.spr = Ring_Expand_spr
	doTurn = false
}

function AGI_up_I(){
	return ["DEF up", "Description", AGI_up, 2, 0.1, 1, 0, false, 0, 0]
//		Name,	Description,	Script,	TargetSide,	MP Cost,	base,	Hitbase,	alltarg
}
