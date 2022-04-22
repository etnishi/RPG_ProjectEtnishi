/// @description Insert description here
// You can write your code in this editor

mSpeed = 5
// base movement speed value

secondTimer = 60
// timer for events that happen once per second


xMid = sprite_width  / 2
yMid = sprite_height / 2

event_inherited()

function do_col(col_Object){
	var thspd = 0
	var tvspd = 0
	var sgnh = sign(hspeed)
	var sgnv = sign(vspeed)
	// snapshot of current movement speed

	for(var i = 1; i < abs(hspeed); i ++){
		if(!place_meeting(x + (i * sgnh), y, col_Object)){
			thspd ++
		}
	}

	for(var i = 1; i < abs(vspeed); i ++){
		if(!place_meeting(x, y + (i * sgnv), col_Object)){
			tvspd ++
		}
	}

	hspeed = thspd * sgnh
	vspeed = tvspd * sgnv
}