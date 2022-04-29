// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Weight_Control(){
	
	if(!firstStep){
		for(var i = 0; i < array_length(BattleController_obj.entities[0]); i ++){
			
			var aIns = BattleController_obj.entities[0][i]
	
			if(aIns.Status[5] != 0){
				thinkArr[i] = -100
			}else if(aIns.Status[4] != 0){
				thinkArr[i] -= 10
			}else{
				if(thinkArr[i] < 50){
					
				}
			}
			
		}
		var top = 0
		var targ = 0
		for(var i = 0; i < array_length(thinkArr); i++){
			if(thinkArr[i] > top){
				targ = i
				top = thinkArr[i]
			}
		}
		
		// chooses random action from action array
		var select = irandom_range(0, array_length(Active) - 1)
	
		// todo: some way to choose a target on their own side for support
		if(targetSide){
			targ = irandom_range(0, array_length(BattleController_obj.entities[0]) - 1)
			Create_Basic_Attack(BattleController_obj.entities[0][targ], Active[select])
		}else{
			targ = irandom_range(0, array_length(BattleController_obj.entities[1]) - 1)
			Create_Basic_Attack(BattleController_obj.entities[1][targ], Active[select])
		}
	
		show_debug_message("Used action " + string(select))
		// run all post scripts
		Post_Script()
		targetSide = !Side // resets target side to default
		selectLevel = 0
		BattleController_obj.turnInd ++
		firstStep = true
	}
}