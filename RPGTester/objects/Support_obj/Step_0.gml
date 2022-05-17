/// @description Insert description here
// You can write your code in this editor

event_inherited()

if(frameCount >= sprite_get_number(spr)){
	if(instance_place(x, y, target)){
		scr(target, base, etype)
	}
}

