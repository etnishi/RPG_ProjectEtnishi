/// @description Insert description here
// You can write your code in this editor

event_inherited()

frame ++
if(frame > frameSpeed){
	image_index = irandom(sprite_index)
	frame = 0
}
