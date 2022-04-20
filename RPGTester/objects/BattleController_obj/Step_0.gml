/// @description Insert description here
// You can write your code in this editor

if(frameCount > 0)
	frameCount --
else
	frameCount = 60

if(init){
	init = false
	
	array_push(BattleController_obj.notificationLines, enemies[0].insName + enemies[0].approach)
	
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
	if(ds_exists(global.indexes[0], ds_type_list)){
		ds_list_destroy(global.indexes[0])
	}
	if(ds_exists(global.indexes[1], ds_type_list)){
		ds_list_destroy(global.indexes[1])
	}
	
	global.indexes[0] = ds_list_create()
	for(var i = 0; i < array_length(allies); i ++){
		ds_list_add(global.indexes[0], i)
	}
	
	global.indexes[1] = ds_list_create()
	for(var i = 0; i < array_length(enemies); i ++){
		ds_list_add(global.indexes[1], i)
	}
	
}else{
	if(start){
		if(!done){
			if(!instance_exists(Entity_Attack_Super_obj)){
				if(curSide){
					if(curTurn < array_length(allies)){
						if(allies[curTurn].controlType != ""){
							with(allies[curTurn]){
								Pre_Script()
								if((Status[3] == 0) and (Status[4] == 0)){
									controlType()	// ally control script
								}else{
									var dind = ds_list_find_index(global.indexes[0], BattleController_obj.curTurn)
									if(dind != -1){
										ds_list_delete(global.indexes[0], BattleController_obj.curTurn)
									}
									BattleController_obj.curTurn ++
								}
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
								else{
									var dind = ds_list_find_index(global.indexes[1], BattleController_obj.curTurn)
									if(dind != -1){
										ds_list_delete(global.indexes[1], BattleController_obj.curTurn)
									}
									BattleController_obj.curTurn ++
								}
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
			Controller_PostTurn()
			if(winner != -1)
				done = true
		}else{// battle over
			while(instance_exists(Entity_Attack_Super_obj)){
				instance_destroy(Entity_Attack_Super_obj)
			}
			if(winner == 0){
				// loss
				for(var i = 0; i < array_length(allies); i ++){
					instance_destroy(allies[i])
				}
				allies = []
			}else if(winner == 1){
				// win
				for(var i = 0; i < array_length(enemies); i ++){
					for(var k = 0; k < array_length(enemies[i].lootDrops);k ++){
						array_push(lootTable, enemies[i].lootDrops[k])
					}
					instance_destroy(enemies[i])
				}
				enemies = []
				var lootRoll = irandom_range(1, 100)
				for(var i = 0; i < array_length(lootTable); i ++){
					if(lootRoll <= lootTable[i][0]){
						// got item
						array_push(reward, lootTable[i][1])
					}
				}
			}else{
				// other
				
			}
			
			show_debug_message("Battle over")
			
			if(keyboard_check_pressed(global.confirm)){
				if(winner == 1){
					for(var i = 0; i < array_length(allies); i ++){
						for(var o = 0; o < array_length(global.Player_Team); o ++){
							if(global.Player_Team[o][0] == allies[i].insName){
								global_update(o, allies[i])
							}
						}
					}
					room_goto(global.lastRoom)
				}else{
					return_Recall()
				}
			}
		}
	}else{
		if(keyboard_check_pressed(global.confirm)){
			start = true
		}
	}
}
