/// @description Insert description here
// You can write your code in this editor

//event_inherited()
speed = 0
if(shotCount > 0){
	shotCount --
	var ins = instance_create_layer(x,y, "Attack_Layer",Entity_Attack_Super_obj)
	ins.source = source
	ins.Actions = Actions
	ins.Side = Side
	if(randTarg){
		if(!Side){
			ins.target = BattleController_obj.allies[irandom_range(0, array_length(BattleController_obj.allies) - 1)]
		}else{
			ins.target = BattleController_obj.enemies[irandom_range(0, array_length(BattleController_obj.enemies) - 1)]
		}
	}else{
		ins.target = target
	}
}else{
	instance_destroy()
}