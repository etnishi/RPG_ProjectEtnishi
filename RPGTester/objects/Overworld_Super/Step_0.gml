/// @description Insert description here
// You can write your code in this editor


if(instance_exists(Player_Move_obj) and id != Player_Move_obj){
	if(abs(Player_Move_obj.heightLevel - heightLevel) <= 1){
		layer_add_instance("Behind_Instances", id)
	}else{
		layer_add_instance("Front_Instances", id)
	}
}
