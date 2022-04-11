/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(global.keyRight)){
	hspeed = mSpeed
}
if(keyboard_check(global.keyLeft)){
	hspeed = -mSpeed
}
if(keyboard_check(global.keyLeft) and keyboard_check(global.keyRight)){
	hspeed = 0
}


if(keyboard_check(global.keyUp)){
	vspeed = -mSpeed
}
if(keyboard_check(global.keyDown)){
	vspeed = mSpeed
}
if(keyboard_check(global.keyDown) and keyboard_check(global.keyUp)){
	vspeed = 0
}


if(keyboard_check(global.back)){
	mSpeed = 10
}else{
	mSpeed = 5
}

event_inherited()

do_col(Player_Only_Solid)