// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SightCone_targ(){
	if(targIns == ""){
		targIns = instance_create_layer(x + (sprite_width/2), y + (sprite_height/2), "Instances", SightCone_sub_obj)
		targIns.source = self
		targIns.target = Player_Move_obj
	}
	
	if(instance_exists(targIns)){
		targIns.x = x + (sprite_width/2)
		targIns.y = y + (sprite_height/2)
	}
	
	if(targ != ""){
		if(instance_exists(targIns)){
			instance_destroy(targIns)
			targIns = ""
		}
	}
}