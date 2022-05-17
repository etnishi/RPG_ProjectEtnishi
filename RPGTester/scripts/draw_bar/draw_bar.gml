// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_bar(xpos, ypos, val, pal, typ){
	var gscale = 1.5
	
	val = val * gscale
	if(val >= 0){
		
		draw_sprite_ext(pal, 0, xpos, ypos, val, gscale, 0, c_white, 0.8)
	
		if(val > 1){
			val --
			draw_sprite_ext(pal, 0, xpos, ypos, val, gscale, 0, c_white, 0.8)
		}
		if(typ){
			draw_sprite_ext(Bar_Outline_spr, 0, xpos, ypos, gscale, gscale, 0, c_white, 1)
		}else{
			draw_sprite_ext(Bar_Outline2_spr, 0, xpos, ypos, gscale, gscale, 0, c_white, 1)
		}	
	}
}

