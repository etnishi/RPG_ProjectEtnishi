// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Random_Control(){
	
	var select = irandom_range(0, array_length(Active) - 1)
	var targ = irandom_range(0, array_length(BattleController_obj.entities[0]) - 1)
	Active[select][2](targ, 0)
}