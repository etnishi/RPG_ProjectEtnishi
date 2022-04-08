/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(ord("D"))){
	hspeed = 5
}
if(keyboard_check(ord("A"))){
	hspeed = -5
}

if(keyboard_check(ord("W"))){
	vspeed = -5
}
if(keyboard_check(ord("S"))){
	vspeed = 5
}



if(hspeed != 0){
	show_debug_message("TST")
}
event_inherited()