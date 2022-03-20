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
	
	var xoff = (room_width / 2) - 32
	// 32 is the width of the battle entity sprites. 
	// ally and enemy sprites should have the same width.
	
	var yoff = room_height
	var sep = 128
	var xoffA = ((array_length(allies) - 1)/ 2) * sep
	for(var i = 0; i < array_length(allies); i++){
		allies[i].x = xoff + (i * sep) - xoffA
		allies[i].y = yoff - 120
	}
	var xoffE = ((array_length(enemies) - 1) / 2) * sep
	for(var i = 0; i < array_length(enemies); i++){
		enemies[i].x = xoff + (i * sep) - xoffE
		enemies[i].y = yoff / 2
	}
}else{
	if(!instance_exists(Entity_Attack_Super_obj)){
		if(curSide){
			if(curTurn < array_length(allies)){
				if(allies[curTurn].controlType != ""){
					with(allies[curTurn]){
						Pre_Script()
						if((Status[3] == 0) and (Status[4] == 0))
							controlType()	// ally control script
						else
							BattleController_obj.curTurn ++
					}
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
					with(enemies[curTurn]){
						Pre_Script()
						if((Status[3] == 0) and (Status[4] == 0))
							controlType()	// enemy control script
						else
							BattleController_obj.curTurn ++
					}
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