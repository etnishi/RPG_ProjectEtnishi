/// @description Insert description here
// You can write your code in this editor

firstStep = true

mSpeed = 5
// base movement speed value

frameSpd = 50

movStep = frameSpd / mSpeed

movFrame = 0

curDir = 0

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
		var ins = instance_place(x + (i * sgnh), y, col_Object)
		if(!ins){
			thspd ++
		}else if(ins.heightLevel != -1 and ins.heightLevel != heightLevel){
			thspd ++
		}
	}

	for(var i = 1; i < abs(vspeed); i ++){
		var ins = instance_place(x, y + (i * sgnv), col_Object)
		if(!ins){
			tvspd ++
		}else if(ins.heightLevel != -1 and ins.heightLevel != heightLevel){
			tvspd ++
		}
	}
	
	hspeed = thspd * sgnh
	vspeed = tvspd * sgnv
	
}