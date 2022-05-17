/// @description Insert description here
// You can write your code in this editor

if(init){
	init = false
	if(instance_exists(target)){
		var s = distance_to_object(target)
		if(spr == ""){
			spd = s / spd
			spr = Sprite2
		}else
			spd = s / sprite_get_number(spr)
		
	}
}else{
	frameCount ++
}


if(instance_exists(target)){
	move_towards_point(target.x, target.y, spd)
	
	if(distance_to_object(target) <= 0){
		if(frameCount >= sprite_get_number(spr)){
			instance_destroy()
		}
	}
}else{
	instance_destroy()
}

