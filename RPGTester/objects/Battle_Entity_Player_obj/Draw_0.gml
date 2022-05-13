/// @description Insert description here
// You can write your code in this editor

switch(role){
	case(0):
		draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_aqua, 1)
		break
	case(1):
		draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_red, 1)
		break
	case(2):
		draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_blue, 1)
		break
	case(3):
		draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_green, 1)
		break
}
if(!doTurn){
	draw_sprite(playerIcon, 1, x + 32, y - 32)
}else{
	if(playerIcon != ""){
		draw_sprite(playerIcon, 1, x + 32, y - 46)
	}
	var xoffA = 64
	var yoffA = 32
	if(selectLevel > 0){// draws target marker
		if(targetSide == 0){
			draw_sprite(TargetArrow_spr, 0, BattleController_obj.entities[0][target].x, BattleController_obj.entities[0][target].y + 42)
		}else{
			draw_sprite(TargetArrow_spr, 0, BattleController_obj.entities[1][target].x, BattleController_obj.entities[1][target].y + 42)
		}
		draw_text_color(xoffA, yoffA, Active[selectSkill][1], c_white, c_white, c_white, c_white, 1)
		if(doDetail){
			var yoffD = 120
			var sepD = 20
			var xoffD = 120
			for(var i = 0; i < 4; i ++){
				draw_text(BattleController_obj.entities[targetSide][target].x, BattleController_obj.entities[targetSide][target].y - yoffD + (sepD * i), string(Deets[i]))
			}
			for(var i = 0; i < array_length(Deets[4]); i ++){
				draw_text(BattleController_obj.entities[targetSide][target].x + xoffD, BattleController_obj.entities[targetSide][target].y - yoffD + (sepD * i), string(Deets[4][i]))
			}
			draw_text(BattleController_obj.entities[targetSide][target].x, BattleController_obj.entities[targetSide][target].y - yoffD - (sepD), string("Stats"))
			draw_text(BattleController_obj.entities[targetSide][target].x + xoffD, BattleController_obj.entities[targetSide][target].y - yoffD - (sepD), string("Resistances"))
		}
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
