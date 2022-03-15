/// @description Insert description here
// You can write your code in this editor

var xoff = 200
var yoff = 700
var spaceing = 16

for(var i = 0; i < 8; i ++){
	var ind = array_length(notificationLines) - 1 - i
	if(ind >= 0){
		draw_text_color(xoff, yoff - (spaceing * i), notificationLines[ind], c_white, c_white, c_white, c_white, 1)
	}
}