// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Weight_Control(){
	var select = irandom_range(0, array_length(Active) - 1)
	var targ = irandom_range(0, array_length(BattleController_obj.entities[0]) - 1)
	var support = false
	var weights = [[],[]]
	
	for(var i = array_length(BattleController_obj.entities[0]) - 1; i >= 0; i ++){
		// add weight to entity with low health
		var side = 0
		weights[0][i] = 0
		var hPer = BattleController_obj.entities[side][i].CHP / BattleController_obj.entities[0][i].MHP
		if(hPer < 0.5){
			weights[0][i] ++
		}
		if(hPer < 0.2){
			weights[0][i] ++
		}
		
		// Check if status
		if(BattleController_obj.entities[side][i].Status[0] > 0){
			weights[0][i] ++
		}
		if(BattleController_obj.entities[side][i].Status[1] > 0){
			weights[0][i] ++
		}
		if(BattleController_obj.entities[side][i].Status[2] > 0){
			weights[0][i] ++
		}
		if(BattleController_obj.entities[side][i].Status[3] > 0){
			weights[0][i] ++
		}
		if(BattleController_obj.entities[side][i].Status[4] > 0){
			weights[0][i] = -10
			// if down sets weight to negative 
		}
	}
	for(var i = array_length(BattleController_obj.entities[1]) - 1; i >= 0; i ++){
		var side = 1
		weights[0][i] = 0
		var hPer = BattleController_obj.entities[side][i].CHP / BattleController_obj.entities[0][i].MHP
		if(hPer < 0.4){
			weights[0][i] += 5
		}
		if(hPer < 0.2){
			support = false
		}
	}
	
	for(var i = 0; i < array_length(Actions); i++){
		
	}
	
	Active[select][2](targ, 0)
}