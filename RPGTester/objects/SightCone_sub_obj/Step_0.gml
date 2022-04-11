/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(source)){
	instance_destroy()
}

image_angle = source.direction

if(place_meeting(x, y, target)){
	source.targ = target
	source.thinkCooldown = 5
}else{
	source.target = ""
}

x = source.x + (source.sprite_width / 2)
y = source.y + (source.sprite_height / 2)