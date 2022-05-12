/// @description Insert description here
// You can write your code in this editor


if(global.Recall[5]){
	Player_Move_obj.x = global.Recall[1]
	Player_Move_obj.y = global.Recall[2]
	
}else{
	if(place_meeting(x, y, Player_Move_obj)){
		if(cooldown){
			room_goto(targRoom)
			global.Recall[1] = targx
			global.Recall[2] = targy
			global.Recall[5] = true
			cooldown = false
		}
	}else{
		cooldown = true
	}
}

