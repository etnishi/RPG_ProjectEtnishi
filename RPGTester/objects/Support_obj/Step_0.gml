/// @description Insert description here
// You can write your code in this editor

event_inherited()

if(frameCount >= sprite_get_number(spr)-1){
	if(distance_to_object(target) <= 0){
		scr(target, base, etype)
	}
}

