/// @description Insert description here
// You can write your code in this editor

if(init){
	init = false
	
	if(getTeamAvgSpd(allies) > getTeamAvgSpd(enemies)){
		curSide = true
	}else{
		curSide = false
	}
	OrderTeamBySpd(allies)
	OrderTeamBySpd(enemies)
}else{
	if(!instance_exists(Entity_Attack_Super_obj)){
		if(curSide){
			if(curTurn < array_length(allies)){
				if(allies[curTurn].controlType != ""){
					allies[curTurn].controlType()
				}else{
					curTurn ++
				}
			}else{// switch from ally to enemy
				show_debug_message("Switch sides")
				array_push(BattleController_obj.notificationLines, "Enemy Side")
				curTurn = 0
				turnCount ++
				curSide = !curSide
			}
		}else{
			if(curTurn < array_length(enemies)){
				if(enemies[curTurn].controlType != ""){
					enemies[curTurn].controlType()
				}else{
					curTurn ++
				}
			}else{// switch from enemy to ally
				show_debug_message("Back to Player/ally")
				array_push(BattleController_obj.notificationLines, "Player Side")
				curTurn = 0
				turnCount ++
				curSide = !curSide
			}
		}
	}
	
	
	
}