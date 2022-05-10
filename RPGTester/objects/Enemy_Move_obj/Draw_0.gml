/// @description Insert description here
// You can write your code in this editor

if(speed > 0){
	if(In_Range(direction, 0, 45)){
		curDir = 6
	}else if(In_Range(direction, 90, 46)){
		curDir = 9
	}else if(In_Range(direction, 180, 45)){
		curDir = 3
	}else if(In_Range(direction, 270, 46)){
		curDir = 0
	}
	
	draw_sprite(spr, curDir + movFrame, x, y)
	// animated movement
}else{
	draw_sprite(spr, curDir + 1, x, y)
}
