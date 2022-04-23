/// @description Insert description here
// You can write your code in this editor

if(instance_exists(Player_Move_obj)){
	if(activeHeight != Player_Move_obj.heightLevel){
		activeHeight = Player_Move_obj.heightLevel
		needChange = true
	}
}

if(needChange){
	needChange = false
	for (var i = 0; i < instance_number(Solid_Super); i ++){
	    var ins = instance_find(Solid_Super, i)
		if(ins){
			if(ins.heightLevel != activeHeight and ins.heightLevel != -1){
				instance_deactivate_object(ins)
			}else{
				instance_activate_object(ins)
			}
		}
	}
}
