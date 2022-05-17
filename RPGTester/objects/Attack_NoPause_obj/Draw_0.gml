/// @description Insert description here
// You can write your code in this editor

event_inherited()

if(spr != ""){
	if(onTarg){
		draw_sprite(spr, frameCount, target.x + (target.sprite_width/2), target.y + (target.sprite_height/2))
	}else{
		draw_sprite(spr, frameCount, x, y)
	}
}
