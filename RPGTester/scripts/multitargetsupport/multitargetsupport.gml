// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MultiSingleTargetSupport(targ, side){
	var out = []
	for(var i = array_length(BattleController_obj.entities[side]) -1; i >= 0; i --){
		out[i] = instance_create_layer(x, y, "Attack_Layer", Support_obj)
		out[i].target = BattleController_obj.entities[side][i]
	}
	return out
}