/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x,y,Player_Move_obj)){
	if(Player_Move_obj.heightLevel == heightLevel){
		charge ++
		start = true
		Player_Move_obj.backHoleINS = self
		with(Player_Move_obj){
			speed = speed / 5
			motion_add(point_direction(x,y,backHoleINS.x,backHoleINS.y), 2)
		}
	}
}else{
	if(charge > 0)
		charge -= 2
}

