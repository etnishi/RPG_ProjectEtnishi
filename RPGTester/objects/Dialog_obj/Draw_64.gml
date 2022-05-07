/// @description Insert description here
// You can write your code in this editor

var xoff = 683

var yoff = 700

if(array_length(Lines) > 0){
	
	//draw_text(xoff, yoff - 200, "TEST!")
	
	var line = toIndex(Lines[lineInd][0], floor(charInd))
	
	draw_sprite(Dialog_Box_spr, 0, xoff, yoff)
	draw_set_halign(fa_left)
	draw_text_ext(xoff - 230, yoff - 32, line, 16, 420)
	
	if(array_length(Lines[lineInd]) > 2){
		if(array_length(Lines[lineInd][2]) >= 1){
			// dialog name
			var dx = xoff - 230
			var dy = yoff - 60
		
			if(Lines[lineInd][2] != ""){
				draw_sprite(Dialog_Name_spr, 0, dx, dy)
				draw_set_halign(fa_left)
				draw_text(dx, dy, string(Lines[lineInd][2][0]))
			}
		
		}
		if(array_length(Lines[lineInd][2]) >= 2){
			// dialog portrait
			var dlx = xoff - 276
			if(Lines[lineInd][2][1] != ""){
				draw_sprite(Portrait_Box_spr, 0, dlx, yoff)
				draw_sprite(Lines[lineInd][2][1], 0, dlx, yoff)
			}
		}
		if(array_length(Lines[lineInd][2]) >= 3){
			// unused currently
		
		}
	}
}
