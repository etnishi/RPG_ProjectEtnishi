/// @description Insert description here
// You can write your code in this editor

var xoff = 683

var yoff = 384

if(backgroundSpr != ""){
	draw_sprite(backgroundSpr, 0, 0, 0)
}

if(startCount != 0){
	var scale = startCount / 10
	draw_sprite_ext(Notification_Box_spr, 0, xoff, yoff, 1, scale, 0, c_white, 1)
}

if(Notification != ""){
	if(startCount == 10){
		draw_set_halign(fa_center)
		draw_text(xoff, yoff, string(Notification))
		draw_set_halign(fa_left)
	}
}

