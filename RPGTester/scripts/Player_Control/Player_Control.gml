// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_Control(){
	
	if(keyboard_check_pressed(global.back)){// cancels current selection
		selectLevel = 0
		subSelect = 0
		selectSkill = 0
		doDetail = false
		if(lastTarg < Arr_Length_Side(targetSide) and isUp(targetSide, target)){
			target = lastTarg
		}else{
			target = 0
			while(!isUp(targetSide, target)){
				target ++
			}
		}
	}
	
	if(keyboard_check_pressed(global.keyRight)){
		if(selectLevel > 0){// select through targets
			if(Active[selectSkill][3] < 2){// this determines if the ability can target others or only self
				do{
					if(target < Arr_Length_Side(targetSide)){
						target ++
					}else{
						target = 0
					}
				}until(isUp(targetSide, target) or (targetSide == 0))
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
		if(selectLevel > 0 ){// select through targets
			if(Active[selectSkill][3] < 2){// this determines if the ability can target others or only self
				do{
					if(target > 0){
						target --
					}else{
						target = Arr_Length_Side(targetSide)
					}
				}until(isUp(targetSide, target) or (targetSide == 0))
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
		doDetail = !doDetail
	}
	
	if(keyboard_check(global.keyDown)){
		//	
		if(BattleController_obj.canRun and BattleController_obj.runTry){
			runCharge ++
			show_debug_message("Run charge " + string(runCharge))
			if(runCharge > 90){
				show_debug_message("Tried to run")
				BattleController_obj.runTry = false
				var run = irandom_range(0, 100)
				if(run < BattleController_obj.runVal){
					show_debug_message("Good")
					with(BattleController_obj){
						fight_end()
						room_goto(global.lastRoom)
					}
				}
			}
		}
	}else{
		runCharge = 0
	}
	
	if(keyboard_check_pressed(global.confirm)){// confirm action
		if(Active[selectSkill][3] < 2)
			targetSide = getSide(Side, Active[selectSkill][3])
		else
			targetSide = getSide(Side, 1)
		
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
				if(lastTarg < Arr_Length_Side(targetSide) and isUp(targetSide, target)){
					target = lastTarg
				}else{
					target = 0
					while(!isUp(targetSide, target)){
						target ++
					}
				}
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