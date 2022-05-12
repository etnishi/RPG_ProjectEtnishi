// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Weight_Control(){
	var select = irandom_range(0, array_length(Active) - 1)
	var targ = irandom_range(0, array_length(BattleController_obj.entities[0]) - 1)
	var support = false
	var weights = [[],[]]
	
	for(var i = (array_length(BattleController_obj.entities[0]) - 1); i >= 0; i --){
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
		if(BattleController_obj.entities[side][i].role == 3){
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
	for(var i = array_length(BattleController_obj.entities[1]) - 1; i >= 0; i --){
		var side = 1
		weights[1][i] = 0
		var hPer = BattleController_obj.entities[side][i].CHP / BattleController_obj.entities[0][i].MHP
		if(hPer < 0.4){
			weights[1][i] += 5
		}
		if(hPer < 0.3){
			weights[1][i] += 5
		}
		if(hPer < 0.1){
			support = true
		}
	}
	
	var atkTarg = 0
	for(var i = 0; i < array_length(weights[0]); i ++){
		if(weights[0][i] > weights[0][atkTarg]){
			atkTarg = i
		}
	}
	
	var supTarg = 0
	for(var i = 0; i < array_length(weights[1]); i ++){
		if(weights[1][i] > weights[1][supTarg]){
			supTarg = i
		}
	}
	
	
	
	
	// choosing action
	var targAll = false
	var avgW = 0
	for(var i = 0; i < array_length(weights[0]); i ++){
		avgW += weights[0][i]
	}
	avgW = avgW / array_length(weights[0])
	if(avgW < 3)
		targAll = true
	
	
//	Name,	Description,	Script,	TargetSide,	MP Cost,	base,	Hitbase,	alltarg
//	0		1				2		3			4			5		6			7
	var actWeight = 0
	
	for(var i = 0; i < array_length(Active); i++){
		if(weights[0][atkTarg] < weights[1][supTarg] or support){
			// choose support action
			if(Active[i][3] == 1){
				
			}
		}else{
			// choose attack action
			if(Active[i][3] == 0){
				var tempW = 0
				if(Active[select][5] < Active[actWeight][5]){
					tempW ++
				}
				if(Active[select][6] < Active[actWeight][6]){
					tempW ++
				}
				if(targAll and Active[i][7]){
					tempW ++
				}
				if(tempW > actWeight){
					actWeight = tempW
					select = i
				}
			}
		}
	}
	
	
	var sweight = 2
	for(var i = 0; i < array_length(weights[Active[select][3]]); i ++){
		if(weights[Active[select][3]][i] > sweight){
			targ = i
			sweight = weights[Active[select][3]][i]
		}
	}
	
	
	Active[select][2](targ, 0)
}