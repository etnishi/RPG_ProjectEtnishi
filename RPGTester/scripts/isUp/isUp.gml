// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function isUp(side, ind){
	
	// checks if the entity at the given index in the battle controller is currently not downed
	if(BattleController_obj.entities[side][ind].Status[4] == 0){
		return true
	}else{
		return false
	}
	
}