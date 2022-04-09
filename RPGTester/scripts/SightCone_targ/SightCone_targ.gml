// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SightCone_targ(){
	if(targIns == ""){
		targIns = instance_create_layer(x, y, "Instances", SightCone_sub_obj)
		targIns.source = self
		targIns.target = Player_Move_obj
	}
	
	if(instance_exists(targIns)){
		targIns.x = x
		targIns.y = y
	}
}