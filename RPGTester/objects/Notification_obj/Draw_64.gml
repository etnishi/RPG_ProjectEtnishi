/// @description Insert description here
// You can write your code in this editor

if(backgroundSpr != ""){
	draw_sprite(backgroundSpr, 0, 0, 0)
}

if(startCount != 0){
	var scale = startCount / 10
	draw_sprite_ext(Notification_Box_spr, 0, 1366/2, 768/2, 1, scale, 0, c_white, 1)
}

if(Notification != ""){
	if(startCount == 10){
		draw_set_halign(fa_center)
		draw_text(1366/2, 768/2, string(Notification))
		draw_set_halign(fa_left)
	}
}

