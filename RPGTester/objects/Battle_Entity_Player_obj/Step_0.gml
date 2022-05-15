/// @description Insert description here
// You can write your code in this editor


//	target
//	targetSide

if(selectLevel == 0){
	targetSide = Side
	target = insInd
	var lvtmp = checkLevel
	checkLevel = 2
}

if(doDetail){
	Deets[0] = BattleController_obj.entities[targetSide][target].insName
	
	if(checkLevel > 0){
		Deets[1] = BattleController_obj.entities[targetSide][target].CHP
		Deets[2] = BattleController_obj.entities[targetSide][target].CMP
	}else{
		Deets[1] = "???"
		Deets[2] = "???"
	}
	
	if(checkLevel > 1){
		Deets[3] = BattleController_obj.entities[targetSide][target].role
		switch(Deets[3]){
			case(0):
				Deets[3] = "TEK"
				break
			case(1):
				Deets[3] = "DPS"
				break
			case(2):
				Deets[3] = "TNK"
				break
			case(3):	
				Deets[3] = "HLR"
				break
		}
	}else{
		Deets[3] = "???"
	}
	if(checkLevel > 2){
		Deets[4] = BattleController_obj.entities[targetSide][target].RES
	}else{
		Deets[4] = ["???", "???", "???", "???"]
	}
}

if(selectLevel == 0){
	checkLevel = lvtmp
}

event_inherited()


