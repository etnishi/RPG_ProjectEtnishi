/// @description Insert description here
// You can write your code in this editor

draw_self()

if(selectLevel > 0){
	
	if(targetSide){
		draw_sprite(TargetArrow_spr, 0, BattleController_obj.allies[target].x, BattleController_obj.allies[target].y - 42)
	}else{
		draw_sprite(TargetArrow_spr, 0, BattleController_obj.enemies[target].x, BattleController_obj.enemies[target].y - 42)
	}
}