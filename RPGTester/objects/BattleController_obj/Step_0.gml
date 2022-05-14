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
	
	var xoffE = ((array_length(entities[1]) - 1) / 2) * sep
	for(var i = 0; i < array_length(entities[1]); i++){
		entities[1][i].x = xoff + (i * sep) - xoffE
		entities[1][i].y = yoff / 2
	}
	
	xoff += 128
	var xoffA = ((array_length(entities[0]) - 1)/ 2) * sep
	for(var i = 0; i < array_length(entities[0]); i++){
		entities[0][i].x = xoff + (i * sep) - xoffA
		entities[0][i].y = yoff - 120
	}
	for(var o = 0; o < 2; o ++){
		for(var i = 0; i < array_length(entities[o]); i ++){
			with(entities[o][i]){
				Pre_Script()
			}
			if(ground != ""){
				ground(o, i)
			}
			if(air != ""){
				air(o, i)
			}
		}
	}
}else if(!done){
	if(!pause and !instance_exists(Attack_obj)){
		
		if(turnStart){
			turnStart = false
			// array_push(notificationLines, "Turn " + string(turnCounter)+ " Start")
			with(entities[sideInd][turnInd]){
				Pre_Script()
				doTurn = true
				// execute entity pre turn control scripts
			}
			if(ground != ""){
				ground(sideInd, turnInd)
			}
			if(air != ""){
				air(sideInd, turnInd)
			}
		}else{
			with(entities[sideInd][turnInd]){
				if(Status[3] == 0 and Status[4] == 0){
					controlType()
				}else{
					doTurn = false
				}
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
			runTry = true
			turnInd = 0
			sideInd ++
			if(sideInd >= array_length(entities)){
				sideInd = 0
			}
			// switch to other side
		}
		
		if(team_check(entities[1])){
			// if enemy team is down
			done = true
			win = true
			array_push(notificationLines, "Battle Over")
			fight_end()
			array_push(notificationLines, "You gain " + string(loot[0]) + " EXP ")
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
