/// @description Insert description here
// You can write your code in this editor

if(init){
	init = false
	if(instance_exists(target)){
		var s = distance_to_object(target)
		spd = s / spd
	}
	countdown = floor(spd)
}else{
	countdown --
	if(countdown < 0){
		countdown = floor(spd)
		frameCount ++
	}
}

if(instance_exists(target)){
	move_towards_point(target.x, target.y, spd)
	
	if(instance_place(x, y, target)){
		instance_destroy()
	}
}else{
	instance_destroy()
}

