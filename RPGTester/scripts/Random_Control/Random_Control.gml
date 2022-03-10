// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Random_Control(){
	if(!instance_exists(Entity_Attack_Super_obj)){
		var select = irandom_range(0, array_length(Active) - 1)
		var targ = 0
	
		if(targetSide){
			targ = irandom_range(0, array_length(BattleController_obj.allies) - 1)
			Create_Basic_Attack(BattleController_obj.allies[targ], Active[select])
		}else{
			targ = irandom_range(0, array_length(BattleController_obj.enemies))
			Create_Basic_Attack(BattleController_obj.enemies[targ], Active[select])
		}
		BattleController_obj.curTurn ++
	}
}