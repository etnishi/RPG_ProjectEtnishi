// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_bar(xpos, ypos, len, wid, val, pal){
	
	if(val >= 0){
		var color = [c_green, c_purple]
		if(pal){
			color = [c_aqua, c_orange]
		}
	
		draw_rectangle_color(xpos, ypos, xpos + len, ypos + wid, c_black, c_black, c_black, c_black, false)
	
		if(val > 1){
			val --
			draw_rectangle_color(xpos, ypos, xpos + (len * val), ypos + wid, color[1], color[1], color[1], color[1], false)
		}
	
		draw_rectangle_color(xpos, ypos, xpos + (len * val), ypos + wid, color[0], color[0], color[0], color[0], false)
	}
}

