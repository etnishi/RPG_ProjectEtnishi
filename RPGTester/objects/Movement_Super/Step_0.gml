/// @description Insert description here
// You can write your code in this editor


var thspd = 0
var tvspd = 0
var sgnh = sign(hspeed)
var sgnv = sign(vspeed)

for(var i = 1; i < abs(hspeed); i ++){
	if(!place_meeting(x + (i * sgnh), y, Solid_Super)){
		thspd ++
	}
}

for(var i = 1; i < abs(vspeed); i ++){
	if(!place_meeting(x, y + (i * sgnv), Solid_Super)){
		tvspd ++
	}
}

if(keyboard_check_pressed(vk_space)){
	show_debug_message("blarg")
}

hspeed = thspd * sgnh
vspeed = tvspd * sgnv