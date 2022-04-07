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
		var t = 0
		if(Side){
			t = GetRandInd(!Side)
		}else{
			t = GetRandInd(!Side)
		}
		if(!Side){
			ins.target = BattleController_obj.allies[t]
		}else{
			ins.target = BattleController_obj.enemies[t]
		}
	}else{
		ins.target = target
	}
}else{
	instance_destroy()
}