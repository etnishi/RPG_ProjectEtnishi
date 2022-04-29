/// @description Insert description here
// You can write your code in this editor

draw_self()

if(doTurn){
	var xoffA = 64
	var yoffA = 32
	if(selectLevel > 0){// draws target marker
	
		if(targetSide){
			draw_sprite(TargetArrow_spr, 0, BattleController_obj.entities[0][target].x, BattleController_obj.entities[0][target].y - 42)
		}else{
			draw_sprite(TargetArrow_spr, 0, BattleController_obj.entities[1][target].x, BattleController_obj.entities[1][target].y - 42)
		}
		draw_text_color(xoffA, yoffA, Active[selectSkill][1], c_white, c_white, c_white, c_white, 1)
	}else{
		for(var i = 0; i < array_length(Active); i ++){
			if(Active[i] != ""){
				draw_text_color(xoffA + (128 * i), yoffA, Active[i][0], c_white, c_white, c_white, c_white, 1)
				if(i == selectSkill){
					draw_sprite_ext(TargetArrow_spr, 0, xoffA + (128 * i), yoffA, 1, 1, 0, c_white, 1)
				}
			}
		}
	}
}

event_inherited()
