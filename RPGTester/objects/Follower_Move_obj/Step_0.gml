/// @description Insert description here
// You can write your code in this editor

if(global.Recall[5]){
	x = global.Recall[1]
	y = global.Recall[2]	
}

if(following != ""){
	var dis = distance_to_object(following)
	
	if(dis > 200){
		x = following.x
		y = following.y
	}else if(dis > 50){
		doCollision = true
		move_towards_point(following.x, following.y, mSpeed )
	}
	mSpeed = following.mSpeed
}

event_inherited()
