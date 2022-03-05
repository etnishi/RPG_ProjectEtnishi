/// @description Insert description here
// You can write your code in this editor

if(init){
	init = false
	
	if(getTeamAvgSpd(allies) > getTeamAvgSpd(enemies)){
		curSide = true
	}else{
		curSide = false
	}
	OrderTeamBySpd(allies)
	OrderTeamBySpd(enemies)
}else{
	
	if(curSide){
		if(curTurn < array_length(allies)){
			if(allies[curTurn].controlType != ""){
				allies[curTurn].controlType()
			}else{
				curTurn ++
			}
		}else{
			show_debug_message("Switch sides")
			curTurn = 0
			curSide = !curSide
		}
	}else{
		if(curTurn < array_length(enemies)){
			if(enemies[curTurn].controlType != ""){
				enemies[curTurn].controlType()
			}else{
				curTurn ++
			}
		}else{
			show_debug_message("Back to Player/ally")
			curTurn = 0
			curSide = !curSide
		}
	}
	
}