// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Arr_Length_Side(side){
	if(side){
		return array_length(BattleController_obj.entities[0]) - 1
	}else{
		return array_length(BattleController_obj.entities[1]) - 1
	}
}