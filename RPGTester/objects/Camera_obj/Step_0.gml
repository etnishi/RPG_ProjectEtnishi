/// @description Insert description here
// You can write your code in this editor

var dis = distance_to_object(global.camMode)

if(!instance_exists(global.camMode)){
	global.camMode = Player_Move_obj
}

if(dis < 64 or dis > 300){
	x = global.camMode.x
	y = global.camMode.y
}else{
	move_towards_point(global.camMode.x, global.camMode.y, mSpeed)
	
}

