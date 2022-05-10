/// @description Insert description here
// You can write your code in this editor

if(active <= 0){
	draw_self()
	
	
	// curDir = frame offset for directions
	// 0 down, 3 left, 6 right, 9 up
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
	draw_text(x + 64,y,string(direction))
	
	draw_text(x + 64,y + 20,string(speed))
	
	draw_text(x,y,string(heightCur))
}

/*
if(direction == 0){
	curDir = 6
}else if(direction == 90){
	curDir = 9
}else if(direction == 180){
	curDir = 3
}else if(direction == 270){
	curDir = 0
}
*/
