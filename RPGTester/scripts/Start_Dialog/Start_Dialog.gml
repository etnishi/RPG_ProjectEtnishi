// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Start_Dialog(dArr){
	if(!object_exists(Dialog_obj)){
		instance_create_layer(0 ,0, "Config_Instances", Dialog_obj)
	}
	
	if(array_length(Dialog_obj.Lines) != 0){
		Dialog_obj.Lines = dArr
	}
}