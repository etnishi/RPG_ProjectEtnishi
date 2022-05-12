// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SightRing_targ(){
	if(targIns == ""){
		targIns = instance_create_layer(x , y , "Behind_Instances", SightRing_sub_obj)
		targIns.source = self
		targIns.target = Player_Move_obj
	}
	
	if(instance_exists(targIns)){
		targIns.x = x 
		targIns.y = y 
	}
	
	if(targ != ""){
		if(instance_exists(targIns)){
			instance_destroy(targIns)
			targIns = ""
		}
	}
}