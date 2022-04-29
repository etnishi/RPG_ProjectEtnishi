/// @description Insert description here
// You can write your code in this editor

if(instance_exists(target)){
	move_towards_point(target.x, target.y, spd)
	
	if(instance_place(x, y, target)){
		instance_destroy()
	}
}else{
	instance_destroy()
}

