// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_Control(){
	
	if(firstStep){
		firstStep = false
		// run all pre turn scripts
		for(var i = 0; i < array_length(PreTurn); i ++){
			PreTurn[i]()
		}
	}
	
	if(keyboard_check_pressed(vk_shift)){
		selectLevel = 0
		subSelect = 0
		selectSkill = 0
	}
	
	if(keyboard_check_pressed(ord("D"))){
		if(selectLevel > 0){
			if(target < Arr_Length_Side(targetSide)){
				target ++
			}else{
				target = 0
			}
		}else{
			if(selectSkill < (array_length(Active) - 1)){
				selectSkill ++
			}else{
				selectSkill = 0
			}
		}
	}
	
	if(keyboard_check_pressed(ord("A"))){
		if(selectLevel > 0){
			if(target > 0){
				target --
			}else{
				target = Arr_Length_Side(targetSide)
			}
		}else{
			if(selectSkill > 0 ){
				selectSkill --
			}else{
				selectSkill = (array_length(Active) - 1)
			}
		}
	}
	
	if(keyboard_check_pressed(ord("W"))){
		
	}
	
	if(keyboard_check_pressed(ord("S"))){
		
	}
	
	if(keyboard_check_pressed(vk_space)){// confirm action
		selectLevel ++
		if(selectLevel > 1){
			show_debug_message("Player Control Space")
			if(targetSide){
				Create_Basic_Attack(BattleController_obj.allies[target], Active[selectSkill])
			}else{
				Create_Basic_Attack(BattleController_obj.enemies[target], Active[selectSkill])
			}
			
			targetSide = !Side
			selectLevel = 0
			// run all post scripts
			for(var i = 0; i < array_length(PostTurn); i ++){
				PostTurn[i]()
			}
			BattleController_obj.curTurn ++
			firstStep = true
		}
	}
	
	
	
	if(keyboard_check_pressed(vk_anykey)){
		show_debug_message("--DEBUG--")
		show_debug_message("select Level " + string(selectLevel))
		show_debug_message("sub Select " + string(subSelect))
		show_debug_message("selectSkill " + string(selectSkill))
		show_debug_message("target " + string(target))
		show_debug_message("cur health " + string(CHP))
		show_debug_message("---------")
	}
	
}