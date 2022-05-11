/// @description Insert description here
// You can write your code in this editor

if(instance_place(x, y, Player_Move_obj)){
	global.camMode = self
}else if(global.camMode == self){
	global.camMode = Player_Move_obj
}
