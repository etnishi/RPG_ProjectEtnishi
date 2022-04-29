/// @description Insert description here
// You can write your code in this editor

// notification box offset
var xoff = 100
var yoff = 700
var spaceing = 16

for(var i = 0; i < 8; i ++){// fetch the last 8 strings in the notification lines array
	var ind = array_length(notificationLines) - 1 - i
	if(ind >= 0){// if less than 8 notifications are in the array.
		draw_text_color(xoff, yoff - (spaceing * i), notificationLines[ind], c_white, c_white, c_white, c_white, 1)
	}
}
draw_line_color((room_width/2), 0, (room_width/2), room_height, c_red, c_red)

if(done){
	draw_set_halign(fa_center);
	draw_sprite(Start_Box_spr, 0, room_width/2, room_height/2 + 16)
	draw_sprite(Confirm_Prompt_spr, floor(frameCount / 30), room_width/2 + 39, room_height/2 + 20)
	draw_text(room_width/2, room_height/2, "BATTLE DONE")
	draw_set_halign(fa_left);
}else{
	if(curSide){
		if(curTurn < array_length(allies))
			draw_sprite(TargetArrow_spr, 0, allies[curTurn].x, allies[curTurn].y)
	}
}

if(!start){
	draw_set_halign(fa_center);
	draw_sprite(Start_Box_spr, 0, room_width/2, room_height/2 + 16)
	draw_sprite(Confirm_Prompt_spr, floor(frameCount / 30), room_width/2 + 39, room_height/2 + 20)
	draw_text(room_width/2, room_height/2, "BATTLE START")
	draw_set_halign(fa_left);
}



