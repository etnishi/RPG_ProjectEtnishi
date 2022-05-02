// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Do_Nothing(targ, side){
	array_push(BattleController_obj.notificationLines, string( insName + " does Nothing"))
}

function Do_Nothing_I(){
	return ["Nothing", "X does Nothing", Do_Nothing, 1]
}
