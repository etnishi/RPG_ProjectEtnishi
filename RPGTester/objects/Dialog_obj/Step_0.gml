/// @description Insert description here
// You can write your code in this editor

if(array_length(Lines) > 0){
	
	if(charInd < string_length(Lines[lineInd][0])){
		charInd += global.textSpeed
	}
	
	if(keyboard_check_pressed(global.confirm)){
		if(charInd >= string_length(Lines[lineInd][0])){
			charInd = 0
			if(Lines[lineInd][1] != "")
				Lines[lineInd][1]()
			lineInd ++
		}else{
			charInd = string_length(Lines[lineInd][0])
		}
	}

	if(lineInd >= array_length(Lines)){
		Lines = []
		lineInd = 0
		charInd = 0
	}
}else{
	
}

if(sourceIns != ""){
	if(point_distance(Player_Move_obj.x, Player_Move_obj.y, sourceIns.x, sourceIns.y) > 200){
		Lines = []
		lineInd = 0
		charInd = 0
	}
}
