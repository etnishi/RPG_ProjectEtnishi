// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Random_Control(){
	
	if(firstStep){
		firstStep = false
		array_push(BattleController_obj.notificationLines, insName + " turn")
		// run all pre turn scripts
		for(var i = 0; i < array_length(PreTurn); i ++){
			PreTurn[i]()
		}
	}
	
	// chooses random action from action array
	var select = irandom_range(0, array_length(Active) - 1)
	var targ = 0
	
	// todo: some way to choose a target on their own side for support
	if(targetSide){
		targ = irandom_range(0, array_length(BattleController_obj.allies) - 1)
		Create_Basic_Attack(BattleController_obj.allies[targ], Active[select])
	}else{
		targ = irandom_range(0, array_length(BattleController_obj.enemies) - 1)
		Create_Basic_Attack(BattleController_obj.enemies[targ], Active[select])
	}
	
	show_debug_message("Used action " + string(select))
	// run all post scripts
	for(var i = 0; i < array_length(PostTurn); i ++){
		PostTurn[i]()
	}
	BattleController_obj.curTurn ++
	firstStep = true
}