/// @description Insert description here
// You can write your code in this editor

if(castInd != BattleController_obj.sideInd and !instance_exists(Attack_obj)){
	if(chargeAct != ""){
		chargeAct()
	}
	instance_destroy()
}

