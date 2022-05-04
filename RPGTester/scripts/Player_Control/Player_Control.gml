// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_Control(){
	
	if(keyboard_check_pressed(global.back)){// cancels current selection
		selectLevel = 0
		subSelect = 0
		selectSkill = 0
	}
	
	if(keyboard_check_pressed(global.keyRight)){
		if(selectLevel > 0){// select through targets
			if(target < Arr_Length_Side(targetSide)-1){
				target ++
			}else{
				target = 0
			}
		}else{// select through actions
			do{
				if(selectSkill < (array_length(Active) - 1)){
					selectSkill ++
				}else{
					selectSkill = 0
				}
			}until(Active[selectSkill] != "")
		}
	}
	
	if(keyboard_check_pressed(global.keyLeft)){
		if(selectLevel > 0){// select through targets
			if(target > 0){
				target --
			}else{
				target = Arr_Length_Side(targetSide)
			}
		}else{// select through actions
			do{
				if(selectSkill > 0 ){
					selectSkill --
				}else{
					selectSkill = (array_length(Active)-1)
				}
			}until(Active[selectSkill] != "")
		}
	}
	
	if(keyboard_check_pressed(global.keyUp)){
		// todo: show more information?
	}
	
	if(keyboard_check_pressed(global.keyDown)){
		// swap target side?
	}
	
	if(keyboard_check_pressed(global.confirm)){// confirm action
		targetSide = getSide(Side, Active[selectSkill][3])
		selectLevel ++
		if(selectLevel > 1){
			if(CMP >= (MMP * Active[selectSkill][4])){
				CMP -= (MMP * Active[selectSkill][4])
				Active[selectSkill][2](target, targetSide)
				lastTarg = target
				selectLevel = 0
				targetSide = 1
			}else{
				selectLevel = 1
			}
		}else{
			if(Side == targetSide){
				target = insInd
			}else{
				if(lastTarg < Arr_Length_Side(targetSide))
					target = lastTarg
				else
					target = 0
			}
		}
		
	}
	
	
	/*
	if(keyboard_check_pressed(vk_anykey)){
		show_debug_message("--DEBUG--")
		show_debug_message("select Level " + string(selectLevel))
		show_debug_message("sub Select " + string(subSelect))
		show_debug_message("selectSkill " + string(selectSkill))
		show_debug_message("target " + string(target))
		show_debug_message("cur health " + string(CHP))
		show_debug_message("---------")
	}
	*/
}