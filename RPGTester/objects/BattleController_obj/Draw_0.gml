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
