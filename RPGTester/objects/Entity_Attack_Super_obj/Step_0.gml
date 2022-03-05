/// @description Insert description here
// You can write your code in this editor
TTL --

var ins = instance_place(x, y, Battle_Entity_Super_obj)

if(ins == target){// collision with intended target
	
	if(source != ""){//attacker(skill val + AccuracyMod + RandVal - 10)
		
		if(DAM[3] > 0){
			for(var i = 0; i < array_length(Actions); i ++){
				Actions[i](ins)
			}
		}
	}else if(DAM[3] > 0){
		Basic_Do_Damage(ins)
	}
	instance_destroy()
}

if(target != "")
	move_towards_point(target.x + (target.sprite_width / 2), target.y + (target.sprite_height / 2), 10)

if(TTL == 0){
	instance_destroy()
}