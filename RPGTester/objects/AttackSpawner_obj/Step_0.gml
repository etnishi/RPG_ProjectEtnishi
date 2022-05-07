/// @description Insert description here
// You can write your code in this editor

if(cooldown == 0){
	if(hits > 0 and target.CHP > 0){
		cooldown = 30
		hits --
		var ins = instance_create_layer(x, y, "Attack_Layer",  Attack_obj)
		ins.target = target
		ins.base = base
		ins.eType = eType
		ins.hitChance = hitChance
	}else{
		instance_destroy()
	}
}else{
	cooldown --
}

