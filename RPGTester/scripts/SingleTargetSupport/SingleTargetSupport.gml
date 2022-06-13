// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SingleTargetSupport(targ, side){
	var out = []
	out[0] = instance_create_layer(x, y, "Attack_Layer", Support_obj)
	out[0].target = BattleController_obj.entities[side][targ]
	return out
	
}