// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// creates battle entity from entity array
// sets entity to either side depending on "sid"
// can also override control Type of instance
// pushes to ctrIns.<side> array
function Create_Battle_Entity(ctrIns, sid, arr, ctrType){
	var ins = -1
	if(sid){
		ins = instance_create_layer(0, 0, "Instances", Battle_Entity_Player_obj)
		ins.controlType = ctrType
	}else{
		ins = instance_create_layer(0, 0, "Instances", Battle_Entity_Enemy_obj)
		ins.controlType = ctrType
	}
	if(sid){
		array_push(ctrIns.allies, ins)
	}else{
		array_push(ctrIns.enemies, ins)
	}
}