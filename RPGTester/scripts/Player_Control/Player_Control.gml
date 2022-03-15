// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_Control(){
	
	if(firstStep){// all control scripts will have a variation of this block
		firstStep = false
		array_push(BattleController_obj.notificationLines, insName + " turn")
		// run all pre turn scripts
		for(var i = 0; i < array_length(PreTurn); i ++){
			PreTurn[i]()
		}
	}
	
	if(keyboard_check_pressed(vk_shift)){// cancels current selection
		selectLevel = 0
		subSelect = 0
		selectSkill = 0
	}
	
	if(keyboard_check_pressed(ord("D"))){
		if(selectLevel > 0){// select through targets
			if(target < Arr_Length_Side(targetSide)){
				target ++
			}else{
				target = 0
			}
		}else{// select through actions
			if(selectSkill < (array_length(Active) - 1)){
				selectSkill ++
			}else{
				selectSkill = 0
			}
		}
	}
	
	if(keyboard_check_pressed(ord("A"))){
		if(selectLevel > 0){// select through targets
			if(target > 0){
				target --
			}else{
				target = Arr_Length_Side(targetSide)
			}
		}else{// select through actions
			if(selectSkill > 0 ){
				selectSkill --
			}else{
				selectSkill = (array_length(Active) - 1)
			}
		}
	}
	
	if(keyboard_check_pressed(ord("W"))){
		// todo: show more information?
	}
	
	if(keyboard_check_pressed(ord("S"))){
		// swap target side?
	}
	
	if(keyboard_check_pressed(vk_space)){// confirm action
		selectLevel ++
		if(selectLevel > 1){// after secondary confirmation
			show_debug_message("Player Control Space")
			if(targetSide){// creates attack instance from action array against selected target
				Create_Basic_Attack(BattleController_obj.allies[target], Active[selectSkill])
			}else{
				Create_Basic_Attack(BattleController_obj.enemies[target], Active[selectSkill])
			}
			
			targetSide = !Side // resets target side to default
			selectLevel = 0
			// run all post scripts
			for(var i = 0; i < array_length(PostTurn); i ++){
				PostTurn[i]()
			}
			// iterate to next turn in battle controller
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