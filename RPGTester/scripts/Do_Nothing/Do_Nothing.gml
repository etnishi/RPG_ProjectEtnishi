// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Do_Nothing(targ, side){
	var foreal = irandom_range(1, 5)
	if(foreal >=3){
		array_push(BattleController_obj.notificationLines, string( insName + " does Nothing"))
		doTurn = false
	}
}

function Do_Nothing_I(){
	return ["Bash", "Description", Do_Wait(), 0, SingleTargetAttack, 0, 0, [1,0,0,0,0,0], 0, 0, ""]
}
