/// @description Insert description here
// You can write your code in this editor

if(following != ""){
	var dis = distance_to_object(following)
	
	if(dis > 150){
		x = following.x
		y = following.y
	}else if(dis > 20){
		move_towards_point(following.x, following.y, mSpeed + (dis / 10))
	}
}

event_inherited()
