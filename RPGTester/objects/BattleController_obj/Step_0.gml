/// @description Insert description here
// You can write your code in this editor

if(init){
	init = false
	setup_Alies(self)
	
	setup_Enemies(self, global.Enemy_Team)
	
	var xoff = (room_width / 2) - 32
	// 32 is the width of the battle entity sprites. 
	// ally and enemy sprites should have the same width.
	var yoff = room_height
	var sep = 128
	var xoffA = ((array_length(entities[0]) - 1)/ 2) * sep
	for(var i = 0; i < array_length(entities[0]); i++){
		entities[0][i].x = xoff + (i * sep) - xoffA
		entities[0][i].y = yoff - 120
	}
	var xoffE = ((array_length(entities[1]) - 1) / 2) * sep
	for(var i = 0; i < array_length(entities[1]); i++){
		entities[1][i].x = xoff + (i * sep) - xoffE
		entities[1][i].y = yoff / 2
	}
}else if(!done){
	if(!pause and !instance_exists(Attack_obj)){
		
		if(turnStart){
			turnStart = false
			if(ground != ""){
				ground()
			}
			if(air != ""){
				air()
			}
			array_push(notificationLines, "Turn " + string(turnCounter)+ " Start")
			with(entities[sideInd][turnInd]){
				Pre_Script()
				doTurn = true
				// execute entity pre turn control scripts
			}
		}else{
			with(entities[sideInd][turnInd]){
				controlType()
				// execute entity control script
			}
		}
		
		if(!entities[sideInd][turnInd].doTurn){
			with(entities[sideInd][turnInd]){
				Post_Script()
				// execute entity post turn scripts
			}
			turnStart = true
			turnCounter ++
			turnInd ++
			// check if all on a team are downed
		}
		
		if(turnInd >= array_length(entities[sideInd])){
			turnInd = 0
			sideInd ++
			if(sideInd >= array_length(entities)){
				sideInd = 0
			}
		}
		
		if(team_check(entities[1])){
			// if enemy team is down
			done = true
			win = true
			array_push(notificationLines, "Battle Over")
			for(var i = 0; i < array_length(entities[0]); i ++){
				for(var o = 0; o < array_length(global.Player_Team); o ++){
					if(global.Player_Team[o][0] == entities[0][i].insName){
						var xp = loot[0]
						var msg = entities[0][i].insName + " Gains "
						if(entities[0][i].EXP < global.Team_Exp){
							xp = xp * (global.Team_Exp / entities[0][i].EXP)
							entities[0][i].EXP += xp
							msg += "Bonus "
							// bonus catch up EXP 
						}else{
							entities[0][i].EXP += xp
						}
						array_push(notificationLines, msg + string(xp) + " EXP ")
						global_update(o, entities[0][i])
					}
				}
			}
		}else if(team_check(entities[0])){
			// if ally team is down
			done = true
		}
	}else{
		if(pause){
			if(keyboard_check_pressed(global.confirm)){
				
			}
		}
	}
}else{
	if(win){
		// player win
		if(keyboard_check_pressed(global.confirm)){
			room_goto(global.lastRoom)
		}
	}else{
		// loss
		if(keyboard_check_pressed(global.confirm)){
			return_Recall()
		}
	}
}
