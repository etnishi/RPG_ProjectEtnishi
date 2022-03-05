// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_Control(){
	
}

function Test_Control(){
	
	if(keyboard_check_pressed(ord("D"))){
		
	}
	
	if(keyboard_check_pressed(ord("A"))){
		
	}
	
	if(keyboard_check_pressed(vk_space)){// confirm action
		show_debug_message("Player Control Space")
		Create_Basic_Attack(BattleController_obj.enemies[0], [Basic_Do_Damage])
		BattleController_obj.curTurn ++
	}
}